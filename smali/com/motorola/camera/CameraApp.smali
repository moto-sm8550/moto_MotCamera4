.class public Lcom/motorola/camera/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# static fields
.field public static final LOCALES_RTL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mColdTime:J

.field public static sInstance:Lcom/motorola/camera/CameraApp;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

.field public mActivityResultCode:I

.field public mActivityWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

.field public final mAppInitializedCond:Landroid/os/ConditionVariable;

.field public mCameraKpi:Lcom/motorola/camera/CameraKpi;

.field public mDesktopMode:Z

.field public mDisplayRotation:I

.field public mDisplaySize:Landroid/graphics/Point;

.field public mGestureNavEnable:Z

.field public volatile mGestureNavInit:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsActivityOnResume:Z

.field public mIsActivityOnTop:Z

.field public mIsActivityVisible:Z

.field public mIsColdStart:Z

.field public mIsMemPressureExpected:Z

.field public mIsPreviewLimited:Z

.field public volatile mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

.field public mLatestWindow:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mNotchScreenUnuseHeight:I

.field public mPreviewRect:Landroid/graphics/Rect;

.field public mRawSize:Landroid/graphics/Point;

.field public mResumeRefCount:I

.field public mSecure:Z

.field public mStartRefCount:I

.field public mToast:Landroid/widget/Toast;

.field public mTrimMemoryLevel:I

.field public mUserMonkey:Ljava/lang/Boolean;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/motorola/camera/CameraApp;

    const-string v0, "ar"

    const-string v1, "fa"

    const-string v2, "iw"

    const-string/jumbo v3, "ur"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/CameraApp;->mColdTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 5
    sget-object v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->NONE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    .line 9
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 11
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 12
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    .line 13
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Camera"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SecureCamera"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CliCameraActivity"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getInstance()Lcom/motorola/camera/CameraApp;
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.motorola.camera_preferences"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static waitForInstance()Z
    .locals 5

    const/4 v0, 0x5

    .line 1
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v2, 0x0

    const-string v3, "CameraApp"

    if-nez v1, :cond_0

    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Camera app has not been initialized, waiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x258

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    return v2

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "The Camera app has not been initialized yet!"

    .line 4
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final checkMultiWindow(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iput-boolean p0, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_1

    .line 10
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f11010b

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result p0

    if-nez p0, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    return-object p0
.end method

.method public final getCachePreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x0

    const-string v1, "com.motorola.camera_preferences.cache"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraActivityWindow()Landroid/view/Window;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/Window;

    :cond_1
    if-nez v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v1, "SecureCamera"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/Window;

    if-nez v1, :cond_3

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v0, "CliCameraActivity"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final getCameraKpi()Lcom/motorola/camera/CameraKpi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0}, Lcom/motorola/camera/CameraKpi;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    return-object p0
.end method

.method public final getDebugReportPreferences()Landroid/content/SharedPreferences;
    .locals 2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "com.motorola.camera_debug_report"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface;

    invoke-direct {v1}, Lcom/motorola/camera/service/JmsServiceInterface;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    return-object p0
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2
    iput-object p0, v0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    .line 3
    new-instance p0, Landroidx/work/Configuration;

    invoke-direct {p0, v0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object p0
.end method

.method public final hasSoftTSB()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->equals(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isAccessibilityEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    const-string v0, "accessibility"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCameraActivityRunning()Z
    .locals 0

    iget p0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCameraActivityStarted()Z
    .locals 0

    iget p0, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGestureNavigateEnabled()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_navBarInteractionMode"

    const-string v3, "integer"

    const-string v4, "android"

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    .line 8
    :cond_1
    iput-boolean v3, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 9
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_3
    :goto_1
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    return p0
.end method

.method public final isRtlLayout()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTalkbackLayoutEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isUserAMonkey()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-wide v4, Lcom/motorola/camera/CameraApp;->mColdTime:J

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "App init:"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "%s %s %s"

    .line 7
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraApp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    sput-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iput v2, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    .line 10
    iput v2, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    .line 12
    iput-boolean v2, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    .line 13
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    .line 14
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 15
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 16
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_2

    .line 17
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    .line 20
    new-instance v0, Lcom/motorola/camera/CameraApp$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/CameraApp$1;-><init>(Lcom/motorola/camera/CameraApp;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 23
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 24
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    .line 25
    new-instance v1, Lcom/google/android/material/color/DynamicColorsOptions;

    invoke-direct {v1, v0}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V

    .line 26
    new-instance v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/DynamicColorsOptions;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final postRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 3
    iget p3, p1, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_0

    iget p3, p1, Landroid/graphics/Point;->y:I

    if-nez p3, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    return-void
.end method

.method public final showToast(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
