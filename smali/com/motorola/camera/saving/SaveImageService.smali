.class public final Lcom/motorola/camera/saving/SaveImageService;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveImageService$SaveQueue;,
        Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;,
        Lcom/motorola/camera/saving/SaveImageService$ImageContainer;,
        Lcom/motorola/camera/saving/SaveImageService$LazyLoader;
    }
.end annotation


# instance fields
.field public mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

.field public final mMaxAvailableMemory:J

.field public mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

.field public volatile mProcessingHandler:Landroid/os/Handler;

.field public final mProcessingRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/CameraData;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/motorola/camera/saving/SaveListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

.field public volatile mServiceHandler:Landroid/os/Handler;

.field public mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    const-wide/16 v1, 0x1

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 12
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x407c200000000000L    # 450.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    div-double/2addr v3, v7

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    add-double/2addr v3, v5

    double-to-long v3, v3

    mul-long/2addr v3, v1

    const-wide/32 v0, 0x100000

    mul-long/2addr v3, v0

    iput-wide v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveImageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 16
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 21
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 22
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 24
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 26
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addBgRecord(Lcom/motorola/camera/CameraData;)V
    .locals 28

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SaveImageService"

    const-string v1, "CameraData uri is null"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v8, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object v2, v8

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 8
    iget v10, v1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 10
    iget v11, v1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 12
    iget v12, v1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 14
    iget-wide v13, v1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    move-object/from16 v27, v8

    .line 16
    iget-wide v8, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    move-wide v15, v8

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 18
    iget v1, v1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move/from16 v17, v1

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 20
    iget-boolean v1, v1, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move/from16 v18, v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object/from16 v19, v1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v24

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getUUID()J

    move-result-wide v25

    const-wide/16 v8, -0x1

    move-object/from16 v1, v27

    invoke-direct/range {v2 .. v26}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    .line 25
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canSave(II)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-wide v4, v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    sub-long/2addr v2, v4

    int-to-long v4, p0

    int-to-long p0, p1

    mul-long/2addr v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "CAPTURE_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    .line 6
    iget-wide v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_1

    .line 10
    iget-wide v4, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 18
    monitor-enter p0

    const/4 v1, -0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public static correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 4
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V

    const-string p0, "DateTime"

    .line 8
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "DateTimeDigitized"

    .line 11
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    .line 14
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception when correctExifInfo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p5

    .line 2
    new-instance v6, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v6, p5, p2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    if-eqz p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v6, p3}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 4
    :cond_0
    invoke-virtual {v6, p4}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p6, p7}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/saving/XmpUtil;->writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    throw p0

    :catch_2
    move-object v2, v0

    .line 11
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 12
    :goto_4
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_3
    :goto_5
    return-object p0
.end method

.method public static finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SaveImageService"

    const-string v3, "finishVideoFile failed"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void
.end method

.method public static getProcessingCameraData(J)Lcom/motorola/camera/CameraData;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 5
    monitor-exit v1

    return-object v2

    .line 6
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public static getProcessingPostView(J)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap can`t be read. Thumbnail path: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveImageService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public static hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_message"

    const-string v2, "Failed to create file"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "task_id"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 12
    new-instance p1, Lcom/motorola/camera/CameraData;

    iget-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;-><init>(ZLcom/motorola/camera/CameraData;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v7, v3

    .line 5
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 7
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v5, "SEQ_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-wide v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v6, "DATE_TAKEN"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    .line 11
    invoke-static {v1, v8}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :goto_2
    iget v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 17
    invoke-static {v1, v3}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v14

    .line 20
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v15

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v17, 0x1

    move-object v4, v3

    move/from16 v16, v0

    invoke-direct/range {v4 .. v17}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 21
    invoke-static {v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static removeBgRecord(JLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static saveCinemagraph(JZLcom/motorola/camera/saving/FileName;Ljava/io/File;IIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v11, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;

    move-object v1, v11

    move-object v2, p3

    move-object/from16 v3, p4

    move v4, p2

    move-wide v5, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;ZJIIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    .line 3
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, v1, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLandroid/app/Activity;Lcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v2, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    .line 4
    new-instance p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    const-string v1, "SEQ_ID"

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 5
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v0, "DATE_TAKEN"

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    const-string v1, "PROCESSING_URI"

    .line 9
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 12
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v0, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    :cond_1
    return-void
.end method

.method public static stripAppSegments([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/XmpUtil;->stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    throw p0

    :catch_2
    move-object v2, v0

    .line 10
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 11
    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method public static writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 13

    .line 1
    iget-object v0, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    .line 8
    iget-object v4, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 10
    :cond_0
    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    :goto_0
    iput v4, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 11
    iget-object v5, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez v5, :cond_1

    move v10, v3

    goto :goto_1

    .line 13
    :cond_1
    iget v6, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    move v10, v6

    :goto_1
    if-nez v5, :cond_2

    move v11, v3

    goto :goto_2

    .line 14
    :cond_2
    iget v5, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    move v11, v5

    .line 15
    :goto_2
    iput v10, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 16
    iput v11, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 17
    iget-object v6, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    .line 18
    invoke-static {v4}, Lcom/motorola/camera/utility/ExifUtility;->toExifOrientation(I)I

    move-result v8

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v12

    .line 19
    invoke-static/range {v4 .. v11}, Lcom/motorola/camera/saving/SaveImageService;->createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v12, p0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 22
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 24
    :cond_4
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 25
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v2, v12

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 27
    :goto_4
    :try_start_2
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 28
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "No space left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "SaveImageService"

    const-string/jumbo p2, "writeToFile failed: Storage full"

    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    sget-object p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda10;->INSTANCE:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda10;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :cond_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 34
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return v3

    :goto_5
    move-object v12, v2

    .line 35
    :goto_6
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 36
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 37
    throw p0
.end method


# virtual methods
.method public final addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final addSaveRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V
    .locals 26

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    const-string v2, "SaveImageService"

    if-eqz v1, :cond_0

    const-string v0, "Is RAW data, not support watermark!"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Jpeg data is null, won\'t add watermark!"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0x23

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 7
    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->ULTRA_RES_NO_WATERMARK:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    return-void

    .line 8
    :cond_3
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    const-string v1, ""

    const-string v5, "WatermarkEditorService"

    const/4 v6, 0x0

    .line 9
    :try_start_0
    iget-object v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 10
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 11
    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 12
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_4

    :try_start_1
    const-string v8, "front"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    :try_start_2
    const-string v8, "rear"

    .line 13
    :goto_1
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v9

    .line 15
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v10

    .line 16
    new-instance v11, Landroid/util/Size;

    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v13, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    .line 17
    invoke-static {v11}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v11

    .line 18
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v13

    .line 19
    invoke-static {v10, v8, v12, v13}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 20
    iget v10, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v8, v10}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v13, :cond_5

    .line 23
    :try_start_3
    invoke-static {v7, v11}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(ZLandroid/util/Size;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 24
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :cond_5
    :try_start_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_6

    .line 26
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark size is unknown! key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 27
    :cond_6
    :try_start_6
    invoke-static {v12}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 29
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 30
    invoke-static {v8}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 31
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v12, :cond_7

    .line 33
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    .line 34
    :try_start_8
    invoke-static {v7, v1, v11, v8}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_8

    :goto_2
    move-object v0, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_11

    .line 35
    :cond_8
    sget-object v11, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    .line 36
    sget-object v11, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    .line 37
    invoke-virtual {v11, v10, v7}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_e

    .line 38
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0603bb

    .line 40
    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    int-to-float v1, v1

    .line 41
    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v12, v1

    float-to-int v12, v12

    .line 42
    sget v13, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v13, v1

    float-to-int v13, v13

    .line 43
    sget v14, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v1, v14

    float-to-int v1, v1

    const/16 v14, 0x5a

    .line 44
    iget v15, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eq v14, v15, :cond_a

    const/16 v14, 0x10e

    if-ne v14, v15, :cond_9

    goto :goto_5

    .line 45
    :cond_9
    :try_start_9
    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :goto_3
    move-object v1, v6

    const/4 v4, 0x0

    goto/16 :goto_16

    :goto_4
    move-object v4, v6

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_a
    :goto_5
    :try_start_a
    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 46
    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 47
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 48
    invoke-static {v14, v15, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 49
    :try_start_b
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 50
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v15, 0xff

    .line 52
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p2, :cond_c

    if-eqz v9, :cond_b

    .line 55
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v4, v16, v17

    int-to-float v4, v4

    .line 56
    invoke-virtual {v8, v7, v4, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 57
    :cond_b
    invoke-virtual {v8, v7, v15, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    :cond_c
    :goto_7
    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 59
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-wide v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 60
    invoke-static {v3, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 64
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v4, v1

    .line 67
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v14, v3, v11, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 71
    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    .line 72
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    sub-int/2addr v4, v12

    .line 73
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v13

    if-eqz v9, :cond_d

    goto :goto_8

    :cond_d
    move v12, v4

    :goto_8
    int-to-float v4, v12

    int-to-float v7, v7

    .line 74
    invoke-virtual {v8, v3, v4, v7, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    invoke-static {v10, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v8, v3, v4, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v7, v6

    goto :goto_b

    :goto_9
    const/4 v13, 0x0

    goto/16 :goto_12

    :goto_a
    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_e
    const/4 v6, 0x0

    .line 76
    :goto_b
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 77
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 78
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 79
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v8, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 80
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 81
    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 82
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 83
    invoke-virtual {v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnail()[B

    move-result-object v4

    .line 84
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v10, 0x0

    .line 85
    :try_start_c
    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    .line 87
    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 88
    array-length v11, v4

    invoke-static {v4, v10, v11, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_14

    .line 89
    :try_start_d
    iget v8, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v8, :cond_f

    int-to-float v8, v8

    .line 90
    invoke-static {v4, v8}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 91
    :cond_f
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    new-instance v10, Landroid/graphics/Rect;

    .line 93
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v13, 0x0

    :try_start_e
    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 94
    :try_start_f
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v3, v11

    .line 95
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    float-to-int v1, v11

    .line 96
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v1

    .line 97
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/4 v13, 0x0

    :try_start_10
    invoke-direct {v11, v13, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v9, :cond_10

    .line 98
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v11, Landroid/graphics/Rect;->left:I

    .line 99
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->right:I

    .line 100
    :cond_10
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 103
    invoke-virtual {v8, v7, v10, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 104
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v8

    .line 106
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v10, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 107
    iget v10, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v10, :cond_11

    neg-int v10, v10

    int-to-float v10, v10

    .line 108
    invoke-static {v4, v10}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 109
    :cond_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 110
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v10, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    const/high16 v11, 0x10000

    if-lt v10, v11, :cond_12

    .line 112
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 113
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v10, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    :cond_12
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-ge v8, v11, :cond_13

    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    .line 116
    :goto_c
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e

    :cond_14
    const/4 v3, 0x1

    const/4 v13, 0x0

    const-string v1, "The thumbnail image is invalid or null!"

    .line 117
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_1
    move-exception v0

    move v13, v10

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move v13, v10

    goto/16 :goto_13

    :cond_15
    const/4 v3, 0x1

    const/4 v13, 0x0

    :goto_d
    const/4 v1, 0x0

    .line 118
    :goto_e
    iget v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v4, :cond_17

    .line 119
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    neg-int v4, v4

    int-to-float v4, v4

    .line 120
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    .line 121
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    .line 122
    invoke-virtual {v8, v4, v10, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v4, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 124
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v18, v7

    move-object/from16 v23, v8

    .line 125
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eq v7, v4, :cond_16

    move v7, v3

    goto :goto_f

    :cond_16
    move v7, v13

    :goto_f
    move v11, v7

    move-object v7, v4

    goto :goto_10

    :cond_17
    move v11, v13

    const/4 v4, 0x0

    .line 126
    :goto_10
    :try_start_11
    iget-object v8, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 127
    new-instance v10, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B)V

    iget v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v8, v7, v10, v1, v9}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToJpeg([BLjava/lang/Object;Lcom/motorola/camera/mcf/McfMetadataModificationCallable;IZ)[B

    move-result-object v1

    if-nez v1, :cond_18

    const-string v0, "Watermarked JPEG was not successfully created"

    .line 128
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    move v4, v11

    move v3, v13

    goto :goto_11

    .line 129
    :cond_18
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 130
    iput-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object v0, v4

    move v4, v11

    .line 131
    :goto_11
    invoke-static {v6}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_19

    .line 132
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_19
    move v4, v3

    goto :goto_15

    :catch_2
    move-exception v0

    goto :goto_14

    :catchall_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_13

    :catchall_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    const/4 v13, 0x0

    const/4 v6, 0x0

    :goto_12
    move v4, v13

    const/4 v1, 0x0

    goto :goto_16

    :catch_5
    move-exception v0

    const/4 v13, 0x0

    const/4 v6, 0x0

    :goto_13
    move v11, v13

    const/4 v4, 0x0

    .line 133
    :goto_14
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 134
    invoke-static {v6}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v11, :cond_1a

    .line 135
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1a
    move v4, v13

    :goto_15
    if-nez v4, :cond_1b

    const-string v0, "Add watermark failed!"

    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :catchall_5
    move-exception v0

    move-object v1, v6

    move-object v6, v4

    move v4, v11

    move-object/from16 v25, v6

    move-object v6, v1

    move-object/from16 v1, v25

    .line 137
    :goto_16
    invoke-static {v6}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_1c

    .line 138
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    :cond_1c
    throw v0
.end method

.method public final notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v7, "SEQ_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v6, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 9
    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v8, "ALTERNATE_SHOT"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 10
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "alternate_shot_index_"

    .line 11
    invoke-static {v9}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 12
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v8

    :goto_2
    const-string v7, "IS_PRIMARY"

    .line 14
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v6, v7, :cond_4

    move v6, v8

    goto :goto_3

    :cond_4
    move v6, v9

    :goto_3
    const-string v7, "MCF"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 17
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 18
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "task_id"

    .line 19
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 20
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 21
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    :cond_5
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 23
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    move-object v13, v7

    .line 24
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v6, :cond_7

    .line 25
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ".dng"

    .line 26
    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "PROCESSING_URI"

    .line 27
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    :cond_7
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 29
    invoke-static {v0, v14}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 30
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 31
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 32
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 33
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v4, "SaveImageService"

    const-string v7, "notifyImageSaveComplete: unable to determine if current media file is the original one."

    .line 34
    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_5
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 36
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 38
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz v9, :cond_8

    .line 39
    iget-object v7, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(JLjava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 42
    invoke-virtual {v1, v13}, Lcom/motorola/camera/saving/SaveImageService;->notifyProcessingUri(Landroid/net/Uri;)V

    .line 43
    :cond_9
    new-instance v0, Landroid/util/Size;

    iget v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v0, v1, v4}, Landroid/util/Size;-><init>(II)V

    iget v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/motorola/camera/CameraData;

    iget-wide v11, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v20

    .line 46
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v21

    iget v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/16 v23, 0x0

    move-object v10, v1

    move-wide/from16 v16, v3

    move/from16 v22, v0

    .line 47
    invoke-direct/range {v10 .. v23}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 48
    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    .line 49
    invoke-static {v1, v6}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CAPTURE_THUMB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_a
    return-void
.end method

.method public final notifyProcessingUri(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final removeImageProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SaveImageService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v0, "ImageLength"

    const-string v7, "ImageWidth"

    .line 6
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 7
    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object v9, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "DOCUMENT_POINTS"

    .line 9
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x1

    .line 10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v15, "image/jpeg"

    const-string v14, "Mime"

    const-string v10, "XmpData"

    const-string v11, "Data"

    const-string v13, "SaveImageService"

    if-eqz v9, :cond_4

    .line 11
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v17, v12

    .line 12
    iget-object v12, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    move-object/from16 v18, v6

    const-string v6, "DOCUMENT_WIDTH"

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v12, v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    new-array v1, v12, [B

    .line 15
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {v1, v4, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    .line 18
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 20
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/16 v12, 0x8

    move-object/from16 v26, v3

    new-array v3, v12, [I

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v6, v6

    div-float/2addr v12, v6

    move-object/from16 v27, v10

    const/4 v6, 0x0

    .line 22
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 23
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    const/16 v25, 0x0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-static/range {v20 .. v25}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object v6

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x1

    aget v9, v4, v1

    const/4 v1, 0x2

    aget v4, v4, v1

    .line 27
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 29
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v9

    invoke-virtual {v1, v6, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 34
    :try_start_0
    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 35
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 36
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v9, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v14

    .line 39
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 40
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 41
    iget v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 42
    invoke-virtual {v9, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 43
    invoke-virtual {v9, v7, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v9, v0, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    .line 46
    invoke-virtual {v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x8

    :goto_1
    if-ge v6, v7, :cond_1

    .line 48
    aget v8, v3, v6

    .line 49
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    .line 50
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 51
    :cond_1
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 53
    invoke-virtual {v9, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 54
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const-string v3, "1;"

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 56
    invoke-virtual {v9, v0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 57
    invoke-virtual {v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v1

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v20, v14

    .line 59
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process failed to write exif of document: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :goto_3
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 61
    new-instance v3, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v3}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 62
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://ns.google.com/photos/1.0/document/"

    .line 64
    iget-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_2

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 65
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 66
    iput-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 67
    :cond_2
    iget-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_3

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 68
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 69
    iput-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 70
    :cond_3
    iget-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 71
    iget-object v7, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 72
    :try_start_3
    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v8, 0x0

    .line 73
    invoke-virtual {v7, v4, v11, v0, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 74
    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v7, v20

    .line 75
    :try_start_4
    invoke-virtual {v6, v4, v7, v15, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v6, v27

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v7, v20

    :goto_4
    const-string v4, "can\'t embed document data"

    move-object/from16 v6, v27

    .line 76
    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :goto_5
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 78
    iget-object v4, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    const/4 v8, 0x0

    .line 79
    invoke-direct {v0, v4, v8, v8}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 80
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_7

    .line 81
    :goto_6
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 82
    throw v0

    :cond_4
    move-object/from16 v26, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-object v6, v10

    move-object/from16 v17, v12

    move-object v7, v14

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_5

    move-object/from16 v1, v26

    .line 83
    iput-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v3, p0

    move-object v5, v0

    goto :goto_8

    :cond_5
    move-object/from16 v1, v26

    move-object/from16 v3, p0

    .line 84
    :goto_8
    iget-object v0, v3, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, v3, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    move-object/from16 v4, v19

    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_9

    :cond_6
    move-object/from16 v4, v19

    :goto_9
    if-eqz v18, :cond_7

    .line 86
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto/16 :goto_34

    .line 87
    :cond_7
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 88
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 89
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_SAVE_OUTPUT_BY_ENGINE"

    .line 90
    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v8, "PANO_IMAGE_WIDTH"

    const-string v9, "PANO_IMAGE_HEIGHT"

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 92
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    .line 93
    :cond_8
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v5, 0x0

    .line 94
    :try_start_5
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4

    .line 95
    :catch_4
    iget v1, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/16 v7, 0x9

    if-ne v1, v7, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_a

    .line 96
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    .line 97
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v8, v1, v9}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v1

    const/4 v8, 0x0

    .line 100
    aget v9, v1, v8

    iput v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 101
    aget v1, v1, v7

    iput v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 102
    :try_start_6
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    const/4 v5, 0x0

    goto :goto_b

    .line 103
    :cond_a
    iget-object v1, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 104
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 105
    invoke-static {v1, v5, v6}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v1

    const/4 v5, 0x0

    .line 106
    aget v6, v1, v5

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/4 v6, 0x1

    .line 107
    aget v1, v1, v6

    iput v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 108
    :goto_b
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 109
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 110
    invoke-static {v0, v1, v5}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V

    .line 111
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    .line 112
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    goto/16 :goto_34

    .line 113
    :cond_b
    sget-object v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 114
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 115
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v0, :cond_12

    .line 116
    sget-object v12, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 117
    sget-object v12, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 118
    sget-object v14, Lcom/motorola/camera/AppFeatures$Feature;->DYNAMIC_DEPTH_XMP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v12, v14}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 119
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v12

    if-nez v12, :cond_c

    .line 120
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    goto :goto_c

    :cond_c
    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_12

    const-string v12, "Orientation"

    .line 121
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v14, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 122
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 123
    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 124
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    move-object/from16 v26, v1

    sget-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 125
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 126
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-eqz v14, :cond_d

    .line 127
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    goto :goto_d

    :cond_d
    const/4 v14, 0x0

    .line 128
    :goto_d
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_f

    if-eqz v14, :cond_f

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    move-object/from16 v19, v4

    .line 129
    :try_start_7
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v18, v5

    :try_start_8
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 130
    invoke-virtual {v4, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v27, v6

    :try_start_9
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 132
    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 133
    invoke-virtual {v5, v12, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v12, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v4

    .line 136
    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 137
    invoke-static {v1, v3, v4, v0}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B

    move-result-object v0

    if-eqz v0, :cond_10

    .line 138
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    :goto_e
    move-object/from16 v27, v6

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_e

    .line 139
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeDynamicDepthPhoto Failed to write exif orientation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_f
    :goto_10
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v27, v6

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing depth photo parameters depthJpeg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " originalJpeg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " imagingModel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_11

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_28

    :cond_11
    const-string v0, "Failed to encode dynamic depth photo, using gdepth instead!"

    .line 141
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_12
    move-object/from16 v26, v1

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v27, v6

    .line 142
    :goto_13
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 143
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 144
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 145
    iget-object v4, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 146
    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 147
    iget-object v5, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    if-eqz v5, :cond_18

    if-eqz v0, :cond_18

    .line 148
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 149
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 150
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 151
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 152
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 153
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto/16 :goto_14

    .line 154
    :cond_13
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 155
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 156
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 157
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 158
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 159
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_14

    .line 160
    :cond_14
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 161
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 162
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 163
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 164
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_14

    .line 166
    :cond_15
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 167
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 168
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 169
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 170
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_14

    .line 172
    :cond_16
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 173
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 174
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 175
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 176
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_14

    .line 178
    :cond_17
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 180
    iget-object v6, v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 181
    iget-object v12, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 182
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v6, v12, v5}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 184
    :cond_18
    :goto_14
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v0, v5, :cond_1a

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v0, :cond_1a

    .line 185
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v6, "UUID"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    if-nez v6, :cond_19

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_15

    :cond_19
    const/4 v6, 0x0

    :goto_15
    const/4 v12, 0x0

    invoke-direct {v0, v12, v5, v6}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    goto :goto_16

    :cond_1a
    const/4 v12, 0x0

    .line 188
    :goto_16
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 189
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 190
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v0, v5, :cond_23

    .line 191
    invoke-static {v12}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 193
    invoke-static {v12}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 195
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 196
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 197
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 198
    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 199
    iget-object v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 200
    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 201
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 202
    invoke-virtual {v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 203
    iget-object v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 204
    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 205
    iget v12, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 206
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v14, "PANO_MAX_OUTPUT_SIZE"

    .line 207
    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    if-nez v9, :cond_1b

    goto/16 :goto_1a

    :cond_1b
    if-eqz v12, :cond_1e

    const/16 v14, 0xb4

    if-ne v12, v14, :cond_1c

    goto :goto_17

    :cond_1c
    if-le v8, v0, :cond_1d

    .line 208
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/4 v12, 0x2

    div-int/2addr v0, v12

    goto :goto_18

    :cond_1d
    const/4 v12, 0x2

    if-le v6, v5, :cond_23

    .line 209
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v12

    goto :goto_18

    :cond_1e
    :goto_17
    const/4 v12, 0x2

    if-le v8, v5, :cond_1f

    .line 210
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v12

    goto :goto_18

    :cond_1f
    if-le v6, v0, :cond_23

    .line 211
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v12

    :goto_18
    mul-int/lit8 v5, v0, 0x2

    sub-int v9, v5, v8

    .line 212
    div-int/2addr v9, v12

    sub-int v14, v0, v6

    .line 213
    div-int/2addr v14, v12

    if-gez v14, :cond_20

    mul-int/lit8 v5, v6, 0x2

    move v0, v6

    const/4 v14, 0x0

    :cond_20
    if-gez v9, :cond_21

    .line 214
    div-int/lit8 v0, v8, 0x2

    move v5, v8

    const/4 v9, 0x0

    .line 215
    :cond_21
    iget-object v12, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v3

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v21, v11

    .line 216
    iget-object v11, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v11, :cond_22

    sget-object v11, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 217
    new-instance v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 218
    iput-object v11, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 219
    :cond_22
    iget-object v11, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_a
    const-string v12, "CroppedAreaImageHeightPixels"

    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_a
    .catch Lcom/adobe/xmp/XMPException; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 v22, v7

    :try_start_b
    move-object v7, v11

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_b .. :try_end_b} :catch_a

    move-object/from16 v23, v15

    const/4 v15, 0x0

    .line 221
    :try_start_c
    invoke-virtual {v7, v3, v12, v6, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaImageWidthPixels"

    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v11

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 223
    invoke-virtual {v8, v3, v6, v7, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaLeftPixels"

    .line 224
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v11

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 225
    invoke-virtual {v8, v3, v6, v7, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaTopPixels"

    .line 226
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v11

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 227
    invoke-virtual {v8, v3, v6, v7, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "FullPanoHeightPixels"

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v11

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 229
    invoke-virtual {v7, v3, v6, v0, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "FullPanoWidthPixels"

    .line 230
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v11

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 231
    invoke-virtual {v6, v3, v0, v5, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "ProjectionType"

    const-string v5, "equirectangular"

    .line 232
    move-object v6, v11

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 233
    invoke-virtual {v6, v3, v0, v5, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "UsePanoramaViewer"

    .line 234
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 235
    invoke-virtual {v11, v3, v0, v5, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_1b

    :catch_9
    move-object/from16 v22, v7

    :catch_a
    :goto_19
    move-object/from16 v23, v15

    goto :goto_1b

    :cond_23
    :goto_1a
    move-object/from16 v20, v3

    move-object/from16 v22, v7

    move-object/from16 v21, v11

    goto :goto_19

    .line 236
    :catch_b
    :goto_1b
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1c

    :cond_24
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_25

    .line 237
    :try_start_d
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 238
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 239
    invoke-static {v0}, Lcom/motorola/camera/saving/XmpUtil;->extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;

    move-result-object v3

    .line 240
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v3, :cond_25

    .line 241
    iget-object v0, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_25

    .line 242
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/adobe/xmp/XMPMeta;)Lcom/motorola/camera/saving/XmpData;

    .line 243
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/ViewPoint;)Lcom/motorola/camera/saving/XmpData;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_1d

    :catch_c
    move-exception v0

    const-string v3, "Error adding 360 InitialView"

    .line 244
    invoke-static {v13, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :cond_25
    :goto_1d
    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 246
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 247
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v5, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfDepthRender;

    .line 248
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_29

    .line 249
    new-instance v5, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v5, v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    .line 250
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 251
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_28

    .line 252
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_1e

    .line 253
    :cond_26
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    .line 254
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v6, v7

    .line 255
    :goto_1e
    iget-boolean v7, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v7, :cond_27

    .line 256
    new-instance v7, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v6

    const-string v8, "Segmentation"

    invoke-direct {v7, v6, v8}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([BLjava/lang/String;)V

    goto :goto_1f

    .line 257
    :cond_27
    new-instance v7, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([B)V

    goto :goto_1f

    :cond_28
    const/4 v7, 0x0

    .line 258
    :goto_1f
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiX()I

    move-result v8

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiY()I

    move-result v9

    .line 259
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiHeight()I

    move-result v0

    invoke-direct {v6, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    goto :goto_20

    :cond_29
    const-string v0, "DepthMap Aux present, but data is null. Not embedding depth data"

    .line 260
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_20
    if-eqz v3, :cond_2a

    .line 261
    new-instance v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointX()I

    move-result v6

    .line 262
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointY()I

    move-result v8

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocusType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v8, v3}, Lcom/motorola/camera/saving/XmpData$DepthFocus;-><init>(IILjava/lang/String;)V

    goto :goto_21

    :cond_2a
    const/4 v0, 0x0

    :goto_21
    if-eqz v5, :cond_2d

    .line 263
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    .line 264
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_2b

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 265
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 266
    iput-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 267
    :cond_2b
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_2c

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 268
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 269
    iput-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 270
    :cond_2c
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 271
    iget-object v8, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_e
    const-string v9, "Far"

    .line 272
    iget v10, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 273
    invoke-virtual {v11, v3, v9, v10, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v9, "Format"

    const-string v10, "RangeLinear"

    .line 274
    move-object v11, v6

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 275
    invoke-virtual {v11, v3, v9, v10, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 276
    move-object v9, v6

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_e .. :try_end_e} :catch_e

    move-object/from16 v11, v22

    move-object/from16 v10, v23

    .line 277
    :try_start_f
    invoke-virtual {v9, v3, v11, v10, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v9, "Near"

    const/4 v13, 0x0

    .line 278
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v13, v6

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 279
    invoke-virtual {v13, v3, v9, v14, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 280
    iget-object v9, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/String;

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_f
    .catch Lcom/adobe/xmp/XMPException; {:try_start_f .. :try_end_f} :catch_d

    move-object/from16 v13, v21

    .line 281
    :try_start_10
    invoke-virtual {v8, v3, v13, v9, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 282
    iget-object v8, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    if-eqz v8, :cond_2e

    const-string v9, "RoiX"

    .line 283
    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v12, v6

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 284
    invoke-virtual {v12, v3, v9, v8, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v8, "RoiY"

    .line 285
    iget-object v9, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v12, v6

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 286
    invoke-virtual {v12, v3, v8, v9, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v8, "RoiWidth"

    .line 287
    iget-object v9, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v12, v6

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 288
    invoke-virtual {v12, v3, v8, v9, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v8, "RoiHeight"

    .line 289
    iget-object v5, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v9, 0x0

    .line 290
    invoke-virtual {v6, v3, v8, v5, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_10
    .catch Lcom/adobe/xmp/XMPException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_22

    :catch_d
    move-object/from16 v13, v21

    goto :goto_22

    :catch_e
    :cond_2d
    move-object/from16 v13, v21

    move-object/from16 v11, v22

    move-object/from16 v10, v23

    :catch_f
    :cond_2e
    :goto_22
    if-eqz v7, :cond_31

    .line 291
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://ns.google.com/photos/1.0/image/"

    .line 292
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v5, :cond_2f

    sget-object v5, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 293
    new-instance v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 294
    iput-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 295
    :cond_2f
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v5, :cond_30

    sget-object v5, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 296
    new-instance v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 297
    iput-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 298
    :cond_30
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 299
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 300
    :try_start_11
    iget-object v8, v7, Lcom/motorola/camera/saving/XmpData$GImage;->mData:Ljava/lang/String;

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v9, 0x0

    .line 301
    invoke-virtual {v6, v3, v13, v8, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 302
    move-object v6, v5

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 303
    invoke-virtual {v6, v3, v11, v10, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 304
    iget-object v6, v7, Lcom/motorola/camera/saving/XmpData$GImage;->mItemSemantic:Ljava/lang/String;

    if-eqz v6, :cond_31

    const-string v7, "ItemSemantic"

    .line 305
    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 306
    invoke-virtual {v5, v3, v7, v6, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_11
    .catch Lcom/adobe/xmp/XMPException; {:try_start_11 .. :try_end_11} :catch_10

    :catch_10
    :cond_31
    if-eqz v0, :cond_33

    .line 307
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://ns.motorola.com/camera/1.0/depthfocus/"

    .line 308
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v5, :cond_32

    sget-object v5, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 309
    new-instance v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 310
    iput-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 311
    :cond_32
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_12
    const-string v6, "FocalPointX"

    .line 312
    iget v7, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointX:I

    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v9, 0x0

    .line 314
    invoke-virtual {v8, v3, v6, v7, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "FocalPointY"

    .line 315
    iget v7, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointY:I

    .line 316
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 317
    invoke-virtual {v8, v3, v6, v7, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "FocalPointType"

    .line 318
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointType:Ljava/lang/String;

    .line 319
    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 320
    invoke-virtual {v5, v3, v6, v0, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_12
    .catch Lcom/adobe/xmp/XMPException; {:try_start_12 .. :try_end_12} :catch_11

    .line 321
    :catch_11
    :cond_33
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v3, :cond_34

    .line 322
    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 323
    iget-object v3, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    goto :goto_23

    .line 324
    :cond_34
    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 325
    iget-object v3, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    :goto_23
    const/4 v4, 0x0

    .line 326
    invoke-direct {v0, v3, v4, v4}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    :cond_35
    move-object/from16 v3, v20

    .line 328
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_37

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 330
    iget-wide v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 331
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    .line 332
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v5, :cond_36

    .line 333
    sget-object v5, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 334
    new-instance v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 335
    iput-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 336
    :cond_36
    iget-object v5, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_13
    const-string v6, "MotionPhoto"

    .line 337
    move-object v7, v5

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_13
    .catch Lcom/adobe/xmp/XMPException; {:try_start_13 .. :try_end_13} :catch_18

    move-object/from16 v10, v17

    const/4 v14, 0x0

    .line 338
    :try_start_14
    invoke-virtual {v7, v0, v6, v10, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "MotionPhotoVersion"

    .line 339
    move-object v7, v5

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 340
    invoke-virtual {v7, v0, v6, v10, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "MotionPhotoPresentationTimestampUs"

    .line 341
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 342
    move-object v4, v5

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 343
    invoke-virtual {v4, v0, v6, v3, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 344
    invoke-static {v5}, Lcom/motorola/camera/saving/XmpData;->createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V

    const-string v0, "Container:Directory[%d]/Container:Item"

    .line 345
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_14
    .catch Lcom/adobe/xmp/XMPException; {:try_start_14 .. :try_end_14} :catch_17

    const/4 v4, 0x1

    :try_start_15
    new-array v6, v4, [Ljava/lang/Object;
    :try_end_15
    .catch Lcom/adobe/xmp/XMPException; {:try_start_15 .. :try_end_15} :catch_16

    const/4 v4, 0x0

    :try_start_16
    aput-object v10, v6, v4
    :try_end_16
    .catch Lcom/adobe/xmp/XMPException; {:try_start_16 .. :try_end_16} :catch_15

    :try_start_17
    invoke-static {v3, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Primary"

    const-string v13, "image/jpeg"
    :try_end_17
    .catch Lcom/adobe/xmp/XMPException; {:try_start_17 .. :try_end_17} :catch_17

    const-wide/16 v6, 0x0

    move-object v10, v5

    move-object/from16 v16, v14

    move-wide v14, v6

    .line 346
    :try_start_18
    invoke-static/range {v10 .. v15}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Lcom/adobe/xmp/XMPException; {:try_start_18 .. :try_end_18} :catch_14

    const/4 v10, 0x1

    :try_start_19
    new-array v4, v10, [Ljava/lang/Object;

    const/4 v6, 0x2

    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_19
    .catch Lcom/adobe/xmp/XMPException; {:try_start_19 .. :try_end_19} :catch_13

    const/4 v11, 0x0

    :try_start_1a
    aput-object v6, v4, v11

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "MotionPhoto"

    const-string/jumbo v7, "video/mp4"

    move-object v4, v5

    move-object v5, v0

    .line 348
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1a
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_27

    :catch_12
    move-exception v0

    goto :goto_26

    :catch_13
    move-exception v0

    :goto_24
    const/4 v11, 0x0

    goto :goto_26

    :catch_14
    move-exception v0

    :goto_25
    const/4 v10, 0x1

    goto :goto_24

    :catch_15
    move-exception v0

    move v11, v4

    move-object/from16 v16, v14

    const/4 v10, 0x1

    goto :goto_26

    :catch_16
    move-exception v0

    move v10, v4

    move-object/from16 v16, v14

    goto :goto_24

    :catch_17
    move-exception v0

    move-object/from16 v16, v14

    goto :goto_25

    :catch_18
    move-exception v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_26
    const-string v3, "can\'t embed motion photo oem"

    move-object/from16 v4, v27

    .line 349
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_37
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 350
    :goto_27
    iput-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v5, v18

    .line 351
    invoke-static {v5, v1}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_28
    if-eqz v0, :cond_3d

    .line 352
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 353
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    .line 354
    iput v3, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    .line 355
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 356
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v1, :cond_38

    move v4, v10

    goto :goto_29

    :cond_38
    move v4, v11

    :goto_29
    move-object/from16 v1, v19

    .line 357
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v3, :cond_3a

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v3, :cond_3a

    .line 358
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v3

    if-eqz v4, :cond_3a

    .line 359
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v3, v4, :cond_39

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v3, v4, :cond_39

    move v4, v10

    goto :goto_2a

    :cond_39
    move v4, v11

    .line 360
    :cond_3a
    :goto_2a
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v3, :cond_3b

    .line 361
    sget-object v5, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v3, :cond_3b

    .line 362
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v10

    goto :goto_2b

    :cond_3b
    move v3, v11

    :goto_2b
    if-eqz v3, :cond_3e

    if-eqz v4, :cond_3e

    .line 363
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v4, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v3, :cond_3e

    .line 364
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 365
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAppXId()I

    move-result v4

    .line 366
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v5

    if-lez v5, :cond_3e

    .line 367
    :try_start_1b
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 368
    :try_start_1c
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    .line 369
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 370
    :try_start_1d
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v3

    invoke-static {v4, v3, v5, v6}, Lcom/motorola/camera/saving/XmpUtil;->addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 371
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_19
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 372
    :cond_3c
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_30

    :catchall_1
    move-exception v0

    move-object v14, v6

    goto :goto_2c

    :catch_19
    move-object v14, v6

    goto :goto_2d

    :catchall_2
    move-exception v0

    move-object/from16 v14, v16

    :goto_2c
    move-object/from16 v16, v14

    move-object v14, v5

    goto :goto_2e

    :catch_1a
    move-object/from16 v14, v16

    :goto_2d
    move-object/from16 v16, v14

    move-object v14, v5

    goto :goto_2f

    :catchall_3
    move-exception v0

    move-object/from16 v14, v16

    :goto_2e
    invoke-static {v14}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 373
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 374
    throw v0

    :catch_1b
    move-object/from16 v14, v16

    .line 375
    :goto_2f
    invoke-static {v14}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v6, v16

    .line 376
    :goto_30
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_31

    :cond_3d
    move-object/from16 v1, v19

    .line 377
    :cond_3e
    :goto_31
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    .line 378
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 379
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v5

    if-eqz v5, :cond_43

    move-object/from16 v6, v26

    .line 380
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 381
    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v7

    if-nez v7, :cond_3f

    .line 382
    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_3f
    move v11, v10

    .line 383
    :cond_40
    invoke-interface {v5}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v6

    if-nez v6, :cond_42

    if-eqz v11, :cond_41

    goto :goto_32

    .line 384
    :cond_41
    invoke-interface {v5, v3}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V

    .line 385
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v4

    .line 386
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_33

    .line 387
    :cond_42
    :goto_32
    invoke-interface {v5}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    .line 388
    invoke-static {v1}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    .line 389
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v4

    .line 390
    :cond_43
    :goto_33
    invoke-static {v0, v4, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_44

    move-object/from16 v1, p0

    .line 391
    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    :cond_44
    :goto_34
    return-void
.end method
