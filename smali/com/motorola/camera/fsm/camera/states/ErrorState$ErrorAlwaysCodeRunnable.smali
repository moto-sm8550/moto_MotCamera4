.class public final Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ErrorState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/ErrorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorAlwaysCodeRunnable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyError(Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f1100fc

    .line 3
    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 4
    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 5
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 12

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    instance-of v1, p3, Landroid/os/Bundle;

    const-string v2, "ErrorAlwaysCodeRunnable"

    const-string v3, "OPEN_CAMERA_ERROR"

    if-eqz v1, :cond_1

    move-object v4, p3

    check-cast v4, Landroid/os/Bundle;

    .line 6
    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "IS_EXTERNAL_CAMERA"

    .line 7
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const p1, 0x7f1100f0

    const p3, 0x7f1100ef

    .line 8
    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    .line 10
    iput p1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 11
    iput p3, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 12
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;->notifyError(Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;Z)V

    goto/16 :goto_9

    .line 13
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 17
    move-object v6, p3

    check-cast v6, Landroid/os/Bundle;

    .line 18
    invoke-virtual {v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "error_retry"

    if-nez v7, :cond_2

    .line 19
    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string v6, "error_retry_count"

    .line 20
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 21
    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    if-ge v7, v9, :cond_4

    .line 22
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 23
    sget-object p3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p3, p3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    if-ge p2, p3, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    .line 24
    :goto_0
    invoke-virtual {p1, v8, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 26
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    .line 27
    invoke-direct {p2, v0, p1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_9

    .line 29
    :cond_4
    instance-of v6, p3, Ljava/io/IOException;

    if-nez v6, :cond_5

    instance-of v6, p3, Landroid/database/sqlite/SQLiteException;

    if-eqz v6, :cond_7

    .line 30
    :cond_5
    sget-object v6, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v6}, Lcom/motorola/camera/storage/StorageUtils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x9600000

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    if-eqz v6, :cond_7

    .line 31
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    const p2, 0x1040009

    .line 32
    new-instance p3, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object p3, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 34
    iput p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 35
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 36
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    if-eqz v1, :cond_8

    .line 37
    move-object v1, p3

    check-cast v1, Landroid/os/Bundle;

    const-string v6, "NO_CAMERAS_ERROR"

    .line 38
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_9

    .line 39
    :cond_8
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    const p1, 0x7f1100df

    .line 40
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_UNKNOWN:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 41
    iget-object v6, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 42
    instance-of v7, v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_9

    .line 43
    check-cast v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    goto :goto_3

    .line 44
    :cond_9
    instance-of v7, v6, Lcom/motorola/camera/fsm/camera/StateKey;

    if-eqz v7, :cond_a

    .line 45
    new-instance v7, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v6, Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v7, v6, v9, v8}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    :goto_2
    move-object v6, v7

    goto :goto_3

    .line 46
    :cond_a
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_b

    .line 47
    new-instance v7, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v7, v9, v9, v6}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    goto :goto_2

    .line 48
    :cond_b
    new-instance v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    invoke-direct {v6, v9, v9, v8}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    .line 49
    :goto_3
    iget-object v7, v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 50
    iget-object v10, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 51
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_c

    .line 52
    check-cast v10, Landroid/os/Bundle;

    .line 53
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    :cond_c
    move v3, v5

    :goto_4
    const v10, 0x7f1100e3

    if-eqz v7, :cond_f

    .line 54
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/StateKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 55
    iget-object p1, v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    .line 56
    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraDisabledException;

    if-eqz p1, :cond_d

    const p1, 0x7f1100e1

    const v10, 0x7f1100e0

    .line 57
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_DISABLED_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    goto :goto_6

    :cond_d
    const p1, 0x7f1100e4

    .line 58
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 59
    iget-object v3, v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mAppHoldingCameraResource:Ljava/lang/String;

    if-eqz v3, :cond_e

    const-string v6, "NOT_FOUND"

    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 61
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1100e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 63
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_e
    if-eqz v9, :cond_12

    move v10, v8

    goto :goto_6

    :cond_f
    if-eqz v3, :cond_10

    .line 64
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    move p1, v10

    goto :goto_5

    .line 65
    :cond_10
    iget v3, v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_11

    .line 66
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_SERVER_DIED:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    :cond_11
    :goto_5
    const v3, 0x7f1100e6

    move v10, p1

    move p1, v3

    :cond_12
    :goto_6
    if-eqz p3, :cond_15

    .line 67
    instance-of v3, p3, Landroid/os/Bundle;

    if-eqz v3, :cond_15

    .line 68
    check-cast p3, Landroid/os/Bundle;

    const-string v3, "error_message"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "Quota exceeded"

    .line 69
    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 70
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 71
    sget-object v3, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda9;->INSTANCE$1:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda9;

    invoke-virtual {p3, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 72
    :cond_13
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f110549

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 75
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f110548

    .line 76
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_14
    const p1, 0x7f110138

    const v10, 0x7f110137

    .line 78
    sget-object v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->VID_REC_START_ERR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 79
    :cond_15
    :goto_7
    sget-boolean p3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz p3, :cond_19

    .line 80
    new-instance p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p3}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    if-eq p1, v8, :cond_16

    .line 81
    iput p1, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    :cond_16
    if-eq v10, v8, :cond_17

    .line 82
    iput v10, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    :cond_17
    if-eqz v9, :cond_18

    .line 83
    iput-object v9, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    .line 84
    :cond_18
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;->notifyError(Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;Z)V

    goto :goto_8

    .line 85
    :cond_19
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 86
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 88
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 89
    :goto_8
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 90
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    .line 91
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 92
    iget-object p1, v1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->mName:Ljava/lang/String;

    const-string p2, "ERRTYP"

    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
