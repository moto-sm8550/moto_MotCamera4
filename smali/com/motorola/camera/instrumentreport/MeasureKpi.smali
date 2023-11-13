.class public final Lcom/motorola/camera/instrumentreport/MeasureKpi;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "MeasureKpi.java"

# interfaces
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;,
        Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementRunnable;,
        Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasureThreadFactory;,
        Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;
    }
.end annotation


# static fields
.field public static final mKpiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;"
        }
    .end annotation
.end field

.field public static final mKpiParentTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mKpiTagLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiTagLevelMap:Ljava/util/HashMap;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiParentTagMap:Ljava/util/HashMap;

    const/16 v2, 0x16

    new-array v2, v2, [Lcom/motorola/camera/CameraKpi$KPI;

    .line 3
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v3, v2, v4

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v3, v2, v4

    .line 7
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_PICTURE_CALLBACK_JPEG:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->PANORAMA_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x4

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v3, v2, v4

    .line 9
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->MR_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x10

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x11

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x12

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_AVG:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x13

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_COUNT:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x14

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x15

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    const-string v2, "HAL_FOCUS_CALLBACK"

    const-string v3, "SHOT_TO_SHOT_O"

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "HAL_GET_PARAMS"

    const/4 v8, 0x0

    .line 11
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "HAL_SET_PARAMS"

    .line 12
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "HAL_SHUTTER_CALLBACK"

    .line 13
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "HAL_PICTURE_CALLBACK_JPEG"

    .line 14
    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "PANORAMA_SAVE"

    .line 15
    invoke-virtual {v1, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "MR_STOP"

    .line 16
    invoke-virtual {v1, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "SHOT_TO_SHOT_UI_O"

    .line 18
    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "SHUTTER_LAG_O"

    .line 19
    invoke-virtual {v1, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "START_PREVIEW"

    move-object/from16 v16, v6

    const-string v6, "TOTAL_STARTUP_W_CAF_O"

    .line 20
    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v8

    const-string v8, "STARTUP_PREVIEW_FRAME_O"

    .line 21
    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v8

    const-string v8, "TOGGLE_CAMERA_O"

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .line 22
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v8

    const-string v8, "TOGGLE_MODE_O"

    .line 23
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "TOTAL_STARTUP_O"

    .line 24
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v15

    const-string v15, "TOTAL_COLD_O"

    .line 25
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v15

    const-string v15, "START_TO_HAL_OPEN"

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v1, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v6

    const-string v6, "MULTI_SHOT_TO_SHOT"

    .line 28
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "MULTI_SHOT_AVG"

    .line 29
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "MULTI_SHOT_COUNT"

    .line 30
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "VIDEO_COMPLETION"

    .line 31
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "TOTAL_CAPTURE_TIME_O"

    .line 32
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v0, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    .line 42
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    .line 46
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    .line 47
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    .line 48
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    .line 49
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    .line 50
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MULTI_SHOT_TO_SHOT"

    .line 51
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MULTI_SHOT_AVG"

    .line 52
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MULTI_SHOT_COUNT"

    .line 53
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VIDEO_COMPLETION"

    .line 54
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TOTAL_CAPTURE_TIME_O"

    .line 55
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;

    invoke-direct {p1, p0}, Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;-><init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;)V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mHandler:Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;-><init>(Lcom/motorola/camera/CameraKpi$KPI;JI)V

    .line 2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput p2, p1, Landroid/os/Message;->what:I

    .line 4
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mHandler:Lcom/motorola/camera/instrumentreport/MeasureKpi$MeasureKpiHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
