.class public final Lcom/motorola/camera/analytics/AnalyticsHelper;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "AnalyticsHelper.java"

# interfaces
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;
    }
.end annotation


# static fields
.field public static final KPI_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

.field public final mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

.field public final mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

.field public final mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

.field public final mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

.field public mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

.field public mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

.field public mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

.field public final mMotionPhotoDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

.field public final mPhotoSolidDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

.field public final mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

.field public final mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

.field public final mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

.field public final mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

.field public final mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

.field public final mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

.field public final mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

.field public mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

.field public final mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/CameraReadyEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraReadyEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraSwitchEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/UserExitAppEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/ShotToShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AlwaysAwareEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/PostDocEditEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostDocEditEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsService;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

    .line 16
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

    return-void
.end method


# virtual methods
.method public final getSessionSeqId()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "SEQID"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 3
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0, p0, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7
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
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "TIMED_OUT_EVENT"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "power"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "EXITTYP"

    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXITTYP"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v2, "EXITTYP"

    const-string v3, "EXITTYP"

    .line 11
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "ANALYTICS_CONTROL_BAR_TAPS"

    .line 14
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "ANALYTICS_CONTROL_BAR_TAPS"

    .line 16
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "ANALYTICS_CONTROL_PANEL_TAPS"

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "ANALYTICS_CONTROL_PANEL_TAPS"

    .line 21
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 27
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "MODESORT"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 31
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "MODELAUNCH"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 33
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "MODESUM"

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object p1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 38
    sget-object v6, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 41
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string v3, "MODEADD"

    .line 43
    iget-object v4, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v4

    .line 44
    :try_start_0
    iget-object v6, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_4
    :goto_1
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 48
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 50
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string p1, "MODEREMOVE"

    .line 52
    iget-object v2, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v2

    .line 53
    :try_start_1
    iget-object v0, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 55
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    .line 56
    :cond_8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 57
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void
.end method

.method public final handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result p0

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "SEQ_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const-string p0, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "STARTUP"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 2
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "SWITCHTIME"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, v2, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "SHOTSEQID"

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->remove(Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const/4 v0, 0x1

    const-string v1, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "COUNT_SECURE_GALLERY_LAUNCHES"

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p1, "COUNT_HELP_OPENED"

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p1, v1, p0, v0}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleOnlineHelpOpened()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "COUNT_HELP_OPENED"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const/4 v3, 0x0

    const-string v4, "HELPLAUNCH"

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v5, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/2addr v0, v2

    invoke-virtual {v5, v4, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleOpenCamera(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "COLD"

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "COLD"

    .line 3
    invoke-virtual {v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "LAUNCHEDBY"

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "LAUNCHEDBY"

    .line 6
    invoke-virtual {v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RAMPSREXP"

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "RAMPSREXP"

    .line 9
    invoke-virtual {v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "RAMAVL"

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "RAMAVL"

    .line 12
    invoke-virtual {v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "RAMTHRS"

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "RAMTHRS"

    .line 15
    invoke-virtual {v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v2, "ERRTYP"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ERRTYP"

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 19
    invoke-virtual {v2, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v1, :cond_1

    .line 22
    iget-boolean v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 25
    iget-object v2, v1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v1, v1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "evttme"

    invoke-virtual {v2, v3, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v3, "APPTIME"

    invoke-virtual {v2, v3, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "IS_CLI_DISPLAY"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleSettingsOpened()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "COUNT_SETTINGS_OPENED"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const/4 v3, 0x0

    const-string v4, "SETTINGSLAUNCH"

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v5, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/2addr v0, v2

    invoke-virtual {v5, v4, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "COUNT_HELP_OPENED"

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleSingleShot()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NUMPIC"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz v0, :cond_4

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 7
    new-instance v5, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 8
    new-instance v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 9
    iget-object v7, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 10
    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    new-instance v7, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-direct {v7, v4}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    invoke-direct {v5, v6, v7, v1}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 11
    iget-object v1, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "CAPTURE_TRIGGER"

    .line 12
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 13
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "RECORDING_ERROR"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    .line 16
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 18
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SNAPSHOT_COUNT"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 20
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 21
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    invoke-virtual {p0, v5}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    goto :goto_2

    .line 26
    :cond_2
    iput-object v5, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 27
    iput-boolean v3, v5, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "AnalyticsHelper"

    const-string p1, "Video capture trigger is null or recording error occurred, analytics event will not be recorded."

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v0, "NUMVID"

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result p1

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocusEnabledAndSuccessful()Z

    move-result p1

    const-string v2, "FOCUS_SUCCESS"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    const-string v2, "ANALYTICS_IS_CAF"

    .line 8
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_ZOOM"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    invoke-virtual {p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->unregister()V

    .line 13
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_EXPOSURE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    invoke-virtual {p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->unregister()V

    .line 18
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_FLASHMODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    invoke-virtual {p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->unregister()V

    .line 23
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    :cond_6
    return-void
.end method

.method public final handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v0, "PINCHZOOM"

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v0, "SCROLLZOOM"

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt$1(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized initializeSessionValues()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "SEQID"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/CameraReadyEvent;->setupSessionValues(Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final logAlwaysAwareObject(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    iget-object p1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    .line 3
    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 5
    sget-object v1, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p4, 0x2f

    if-eq p1, p4, :cond_1

    const/16 p4, 0x40

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p4, "STARTUP"

    invoke-virtual {p1, p4, p2, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object p2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p4, "SHOTSEQID"

    invoke-virtual {p1, p4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 7
    invoke-virtual {p0, p4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 8
    iget-object p0, p1, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    if-nez p0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iput-wide p2, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public final setShotToShotMode(JLjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    if-nez v1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    .line 4
    iput p4, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/ShotToShotEvent;->areRequirementsMet(Lcom/motorola/camera/analytics/ShotToShotEvent$Record;)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object p4, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p4, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final startShotToShotLogging(Lcom/motorola/camera/ShotType;JI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "SHOTSEQID"

    invoke-virtual {v0, v1, p2, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    .line 4
    invoke-direct {p0}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    .line 6
    iput p4, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    .line 7
    iput-wide v1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    .line 8
    sget-object p4, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq p4, p1, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    .line 9
    :cond_0
    iget-object p1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSingleShot()V

    goto :goto_2

    .line 5
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    .line 12
    :cond_5
    :goto_1
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    .line 13
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    .line 14
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    .line 15
    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 17
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SRC_CAM"

    .line 20
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 21
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 22
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 24
    invoke-static {v1, v3}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ZI)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SRC_MODE"

    .line 25
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 28
    :cond_7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 30
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DEST_CAM"

    .line 31
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 32
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    invoke-static {v1, v3}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ZI)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DEST_MODE"

    .line 36
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 38
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 40
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {p0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOpenCamera(Z)V

    goto/16 :goto_4

    .line 44
    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "SWITCHTIME"

    invoke-virtual {p1, v2, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "SWITCHTRIGGER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 47
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto/16 :goto_4

    .line 49
    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOnlineHelpOpened()V

    goto/16 :goto_4

    .line 51
    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "SHOTSEQID"

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    .line 54
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 55
    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSingleShot()V

    goto :goto_4

    .line 57
    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_4

    .line 59
    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSettingsOpened()V

    goto :goto_4

    .line 61
    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v0, "EXITTYP"

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_4

    .line 63
    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 64
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3

    .line 65
    :cond_12
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 66
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_4

    .line 67
    :cond_13
    :goto_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_14
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopShotToShotLogging(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/ShotToShotEvent;->areRequirementsMet(Lcom/motorola/camera/analytics/ShotToShotEvent$Record;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
