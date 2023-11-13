.class public Lcom/motorola/camera/Camera;
.super Lcom/motorola/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/camera/Controller$ActivityCallbackInterface;
.implements Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# static fields
.field public static final mCameraButtonIntentFilter:Landroid/content/IntentFilter;

.field public static mExtraFreeMemSizeKb:I

.field public static mLowMemKillSize:J


# instance fields
.field public final launchManager:Lcom/motorola/camera/launch/LaunchManager;

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

.field public mCTAOpenInCreate:Z

.field public mCTAPermissionAllowed:Z

.field public mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

.field public mCTARecreate:Z

.field public mController:Lcom/motorola/camera/Controller;

.field public mDoLaunch:Z

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCliDisplay:Ljava/lang/Boolean;

.field public mIsColdStart:Z

.field public mKeepSessionSettingOnExit:Z

.field public mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public mOrientation:I

.field public mPendingLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

.field public final mScreenOffReceiver:Lcom/motorola/camera/Camera$2;

.field public final mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mWindowInfoAdapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

.field public final mWindowInfoListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "motorola.camera.intent.action.START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mWindowInfoListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    .line 11
    new-instance v1, Lcom/motorola/camera/launch/LaunchManager;

    invoke-direct {v1}, Lcom/motorola/camera/launch/LaunchManager;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 12
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    .line 13
    new-instance v0, Lcom/motorola/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    .line 14
    new-instance v0, Lcom/motorola/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$2;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$2;

    .line 15
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    return-void
.end method


# virtual methods
.method public final adjustLayoutToRealScreenSize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    const v1, 0x7f0a0260

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x2

    .line 6
    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 10
    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final clearMediaIdsForSecureLaunch()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flip_changed"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/SecureMediaIdsManager;->clearMediaIds()V

    :cond_1
    return-void
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final isCliDisplay()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v0

    sget v2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final isSecureLaunch()Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    return p0
.end method

.method public final killApps()V
    .locals 13

    .line 1
    sget-boolean p0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    new-instance v2, Lcom/motorola/camera/reflect/android/app/IActivityManager;

    invoke-direct {v2, p0}, Lcom/motorola/camera/reflect/android/app/IActivityManager;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    const-string p0, "ActivityManagerNative"

    const-string/jumbo v2, "unable to invoke getDefault"

    .line 4
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_c

    .line 5
    sget-object p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const/16 p0, 0xa

    .line 7
    :cond_1
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 8
    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    if-ne v3, v2, :cond_2

    const/16 v3, 0xdac

    .line 9
    :cond_2
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string v5, "MotoCamera"

    if-eqz v4, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vmRequestSwappiness = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v4, :cond_4

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vmRequestDurationMs = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object v4, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetSwappiness:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    .line 12
    :try_start_1
    iget-object v8, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :catch_1
    :cond_5
    sget p0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const v4, 0xc350

    if-lt p0, v4, :cond_6

    .line 14
    iget-object v4, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetExtraFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_6

    .line 15
    :try_start_2
    iget-object v8, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v7

    invoke-virtual {v4, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 16
    :catch_2
    :cond_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "activity"

    .line 17
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 18
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 19
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 20
    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-wide v10, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sub-long/2addr v8, v10

    iget-wide v10, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    cmp-long p0, v8, v10

    if-gez p0, :cond_7

    sub-long/2addr v10, v8

    const-wide/16 v8, 0x3e8

    .line 21
    div-long/2addr v10, v8

    long-to-int p0, v10

    move v4, v7

    goto :goto_1

    :cond_7
    move p0, v1

    move v4, p0

    .line 22
    :goto_1
    sget-boolean v6, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "checkForMemoryPressure: availMem="

    .line 23
    invoke-static {v6}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 24
    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " threshold="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " pressure expected="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " requestToFreeUp (kb) ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_8
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v6

    .line 27
    iget-object v8, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v9, "COLD"

    invoke-virtual {v8, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "RAMPSREXP"

    if-eqz v8, :cond_9

    iget-object v8, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 28
    invoke-virtual {v8, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    iget-object v8, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v8, v9, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iget-object v8, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    iget-wide v9, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v11, 0x100000

    div-long/2addr v9, v11

    long-to-int v9, v9

    const-string v10, "RAMAVL"

    invoke-virtual {v8, v10, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v6, v6, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v8, v11

    long-to-int v3, v8

    const-string v8, "RAMTHRS"

    invoke-virtual {v6, v8, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    :goto_2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    iput-boolean v4, v3, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-lez p0, :cond_c

    .line 34
    iget-object v3, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    .line 35
    :try_start_3
    iget-object v4, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move v2, v1

    :catch_3
    :cond_a
    if-gez v2, :cond_c

    .line 36
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_b

    const-string/jumbo p0, "use killAllBackgroundProcesses instead"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_b
    iget-object p0, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mKillAllBackgroundProcesses:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_c

    .line 38
    :try_start_4
    iget-object v0, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_c
    return-void
.end method

.method public final launchGoogleLens()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f11019d

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    .line 6
    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 7
    invoke-static {v1, p0, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotifyDelayed(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_3

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GALLERY_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 3
    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "LOCATION"

    .line 4
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    if-ne p2, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_0

    :cond_2
    const/16 p3, 0xc

    if-ne p1, p3, :cond_3

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_3

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 8
    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 9
    :cond_3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->values()[Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    move-result-object p3

    .line 10
    aget-object p1, p3, p1

    .line 11
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iput-object p1, p3, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 13
    iput p2, p3, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DOCUMENT:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-ne p1, p3, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_5
    return-void
.end method

.method public final onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/motorola/camera/arch/view/BaseFragment;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/motorola/camera/arch/view/BaseFragment;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 3
    iput-object p0, p1, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 6
    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->attach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    .line 6
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_1

    .line 9
    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged()V

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 16
    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v1

    .line 17
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_3

    .line 19
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v3, v3

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double v3, p1

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    cmpl-double p1, v3, v0

    if-eqz p1, :cond_3

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    const/4 v2, 0x1

    .line 23
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    sget-boolean v3, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    const-string v4, "AUTO_TEST is enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 9
    iget-object v6, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 10
    invoke-virtual {v6, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 11
    iget-boolean v6, v0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-nez v6, :cond_1

    .line 12
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 13
    iget-object v3, v3, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iput-boolean v5, v0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    return-void

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v3

    .line 20
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->updateMainDisplaySize(Landroid/content/Context;)V

    .line 21
    invoke-static {v3}, Lcom/motorola/camera/utility/ColdStartHelper;->onActivityCreate(Z)V

    .line 22
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v8

    .line 23
    new-instance v9, Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-string v8, "ShaderCache"

    invoke-direct {v9, v10, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 24
    iput-boolean v5, v0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const-string v8, "com.motorola.camera3"

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 26
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v9, 0x7f1100eb

    .line 27
    invoke-virtual {v8, v9, v11}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    .line 28
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 29
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    .line 31
    :cond_2
    sget-object v8, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 32
    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->POP_UP_FRONT_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p1, :cond_3

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 34
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    .line 36
    :cond_3
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 37
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v12, v10, v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v12, v10, v5

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_READY:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v13, 0x2

    aput-object v12, v10, v13

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v11

    :goto_0
    if-ge v12, v9, :cond_4

    .line 38
    aget-object v14, v10, v12

    iget-object v15, v8, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x4000000

    goto :goto_0

    .line 39
    :cond_4
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_5

    .line 40
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 41
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    const/4 v8, 0x5

    new-array v10, v8, [Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v10, v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v12, v10, v5

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v12, v10, v13

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v12, v10, v9

    const/4 v12, 0x4

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v13, v10, v12

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v11

    :goto_1
    if-ge v12, v8, :cond_5

    .line 42
    aget-object v13, v10, v12

    iget-object v14, v4, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 43
    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const/16 v4, 0x8

    .line 44
    invoke-virtual {v0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v4, 0x9

    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v6, 0x4000000

    .line 47
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    const/high16 v6, 0x8000000

    .line 48
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    const/16 v6, 0x400

    .line 49
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    const/16 v6, 0x200

    .line 50
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    const/high16 v6, 0x200000

    .line 51
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    const/16 v6, 0x80

    .line 52
    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 54
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 55
    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 56
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 57
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 58
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 59
    invoke-static {v0, v3}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v10

    .line 60
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 61
    invoke-virtual {v8, v10, v7, v6}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 62
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 63
    iget-object v7, v6, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 64
    :try_start_0
    iput-boolean v11, v6, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 65
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    sget-object v6, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;

    .line 67
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 68
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-direct {v8, v7, v6}, Lcom/motorola/camera/fsm/camera/CameraFsm;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 69
    sget-boolean v6, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v6, :cond_6

    .line 70
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 71
    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_6
    const v7, 0x7f0d0025

    .line 72
    invoke-virtual {v0, v7}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    if-eqz v6, :cond_7

    .line 73
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 74
    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 75
    :cond_7
    new-instance v1, Lcom/motorola/camera/Controller;

    const v7, 0x7f0a0260

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v1, v0, v7, v8, v0}, Lcom/motorola/camera/Controller;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V

    iput-object v1, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    .line 77
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 78
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v7, "COLD"

    invoke-virtual {v1, v7, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_a

    .line 81
    new-instance v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 82
    sget-object v7, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v7, v0}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v7

    .line 83
    invoke-direct {v1, v7}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object v1, v0, Lcom/motorola/camera/Camera;->mWindowInfoAdapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v10, v0, Lcom/motorola/camera/Camera;->mWindowInfoListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    const-string v12, "executor"

    .line 85
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "consumer"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {v7, v0}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    .line 87
    iget-object v12, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_1
    iget-object v13, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_9

    .line 89
    instance-of v13, v8, Lkotlinx/coroutines/DispatcherExecutor;

    if-eqz v13, :cond_8

    move-object v13, v8

    check-cast v13, Lkotlinx/coroutines/DispatcherExecutor;

    :cond_8
    new-instance v13, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v13, v8}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    .line 90
    invoke-static {v13}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 91
    iget-object v1, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/LinkedHashMap;

    new-instance v13, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter$addListener$1$1;

    const/4 v14, 0x0

    invoke-direct {v13, v7, v10, v14}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter$addListener$1$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/core/util/Consumer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v14, v11, v13, v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v7

    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_9
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 93
    :cond_a
    :goto_2
    invoke-static {v11}, Lcom/motorola/camera/QuickLaunchShortcutHelper;->editQuickLaunchShortcuts(Z)V

    .line 94
    invoke-static {v4}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->shouldShowOnLockScreen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 97
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 98
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    iget-object v4, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_d

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "android.intent.extra.IS_CLI_DISPLAY"

    .line 101
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    .line 102
    invoke-virtual {v4, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    .line 103
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v7, "Original"

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 104
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 105
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->setUnlocked(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 106
    :cond_c
    iget-object v3, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v3, v4, v5, v11}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    .line 107
    :cond_d
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 108
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.internal.CAMERA_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.motorola.faceunlock.FACE_UNLOCK"

    .line 110
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/Camera;->updateSplashPreview(ZZ)V

    .line 112
    sget-object v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda16;->INSTANCE:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda16;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 113
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0, v11}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz v6, :cond_e

    .line 114
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 115
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_e
    return-void

    :catchall_1
    move-exception v0

    .line 116
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_DESTROY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 7
    monitor-enter v0

    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$2;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    :catch_0
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mWindowInfoAdapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v1, :cond_3

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mWindowInfoListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    const-string v3, "consumer"

    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v3, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    :try_start_2
    iget-object v4, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_2

    .line 20
    invoke-interface {v4, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 21
    :cond_2
    iget-object v1, v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    .line 23
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.CAMERA_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.faceunlock.FACE_UNLOCK"

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 26
    iput-object v0, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    .line 27
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    return-void
.end method

.method public onDisplaySwitch(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/ComponentName;

    const-class v2, Lcom/motorola/camera/Camera;

    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "display"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    const-string v3, "displayManager.displays"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 8
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    .line 10
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 11
    new-instance p1, Landroid/content/ComponentName;

    const-class v2, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    :goto_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 14
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x18000000

    .line 16
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 18
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_3
    const-string p0, "MotoCamera"

    const-string p1, "No external display connected"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_7

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x2766

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2767

    if-eq v2, v3, :cond_4

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_3

    const/16 v2, 0x55

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    move v0, v4

    goto :goto_1

    .line 7
    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :cond_3
    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_4
    const-string v2, "SWITCH_TYPE"

    .line 10
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 12
    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    .line 14
    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 15
    iget-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    const-string v3, "IS_SPLIT_SCREEN"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 17
    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_2
    move v4, v5

    :cond_6
    if-eqz v4, :cond_7

    return v5

    .line 19
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    const/16 v4, 0x55

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    move v0, v1

    goto :goto_1

    .line 5
    :cond_1
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchStarted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    const-string v2, "MotoCamera"

    if-nez v0, :cond_0

    const-string p1, "Received new intent on main display activity while LID is closed"

    .line 3
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {p1, p0, v1, v1, v1}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "Received new intent on main display activity to open CLI -> ignore"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 9
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_7

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v2

    const-string v3, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x2

    .line 14
    iget-boolean v4, v2, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-eqz v4, :cond_5

    .line 15
    iget-boolean v0, v2, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v2, p1}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 17
    :cond_3
    iget v0, v2, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v0, v3, :cond_4

    .line 18
    invoke-virtual {v2, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 19
    :cond_4
    iput-object p1, v2, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    goto :goto_0

    .line 20
    :cond_5
    iget v4, v2, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v4, v3, :cond_6

    .line 21
    invoke-virtual {v2, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {v2, p1, v0, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v0

    .line 25
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "NEW_INTENT_REQUEST_MODE"

    .line 26
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "NEW_INTENT_REQUEST_FACING"

    .line 27
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-object p1, v2, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 29
    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 31
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    return-void
.end method

.method public final onPauseTasks()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    .line 6
    :cond_2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iput-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_3

    .line 9
    iput-boolean v3, v4, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    .line 10
    :cond_3
    iput-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    .line 11
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera3.ACTION_ENABLE_SELFIE_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 13
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera3.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-static {v2}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 16
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    if-eqz v1, :cond_9

    .line 19
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 23
    :cond_4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 27
    :cond_5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 31
    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 35
    :cond_7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 38
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 39
    :cond_8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 41
    :cond_9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    const-wide/16 v0, 0x10

    .line 43
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V

    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(ILandroid/app/Activity;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    return-void
.end method

.method public final onResumeTasks()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object v4, v1, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5
    :try_start_0
    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 11
    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    const-string v1, "MotoCamera"

    const-string v4, "App version: 90005015"

    .line 15
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 21
    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 25
    :cond_4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 27
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->RESUME_TO_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_7

    .line 30
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    iput-boolean v3, v4, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    .line 32
    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 33
    iget-object v1, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v4, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 35
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda14;

    invoke-direct {v5, v1, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 36
    :cond_6
    sget-object v4, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    .line 37
    sget-object v4, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    sget-object v4, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$1;

    invoke-direct {v4}, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$1;-><init>()V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_7
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 41
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    iput-boolean v3, v1, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    .line 43
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.camera3.ACTION_DISABLE_SELFIE_TILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.camera3.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 47
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    .line 48
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    iput-boolean v1, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    .line 50
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_a

    .line 51
    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    iput-boolean v4, v1, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    .line 52
    iget-object v4, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v4, :cond_a

    .line 53
    iget-boolean v5, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v5, :cond_8

    .line 54
    iput-boolean v3, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    .line 55
    iget-object v3, v4, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 56
    invoke-interface {v4}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->resume()V

    goto :goto_1

    .line 57
    :cond_8
    iget v3, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 58
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 59
    iget-object v4, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v3, 0x3

    .line 60
    iput v3, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    goto :goto_2

    .line 61
    :cond_9
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v3, :cond_a

    .line 62
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    const/4 v3, 0x0

    .line 63
    iput-object v3, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    .line 65
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 66
    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 67
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    sget-object v4, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    .line 71
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 72
    iget-boolean v3, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_b

    .line 73
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 74
    :cond_b
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-eqz v1, :cond_c

    .line 75
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 76
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 77
    :cond_c
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_d

    .line 78
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 79
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 81
    :cond_d
    :goto_3
    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    return-void
.end method

.method public onStart()V
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_START:Lcom/motorola/camera/CameraKpi$KPI;

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v1, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    const-string v1, "accessibility"

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 8
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->shouldShowOnLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 11
    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    return-void

    .line 13
    :cond_2
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p0, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    .line 15
    invoke-interface {p0}, Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;->onLaunchStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v6

    iput v6, v1, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    const-string v6, "lid_state"

    .line 17
    :try_start_0
    invoke-static {v6}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 18
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MotorolaSettingsGlobal"

    invoke-static {v8, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v1, v1, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v7, v6, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    if-nez v5, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "Starting mismatching activity and display. Launching proper one."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v2

    .line 25
    invoke-virtual {v0, p0, v4, v1, v2}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    return-void

    .line 26
    :cond_4
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-nez v1, :cond_5

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/Camera;->updateSplashPreview(ZZ)V

    .line 29
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 30
    :cond_5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 32
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    if-eqz v5, :cond_6

    .line 33
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const-string v5, "INITIALIZED"

    :goto_1
    const-string v6, "LAUNCHEDBY"

    .line 34
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v5

    const-string v6, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    iget-object v5, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v6, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    xor-int/2addr v6, v2

    invoke-virtual {v5, v1, v4, v6}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    .line 39
    :cond_7
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 40
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    .line 41
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    iput-boolean v1, v5, Lcom/motorola/camera/CameraApp;->mSecure:Z

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_f

    iget-boolean v5, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    .line 44
    iput-object p0, v1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 45
    new-instance v6, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;-><init>(Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    .line 46
    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v6, :cond_8

    .line 47
    new-instance v6, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;-><init>(Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    .line 48
    :cond_8
    new-instance v6, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-direct {v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;-><init>()V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    .line 49
    invoke-virtual {v1, v4}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/motorola/camera/SensorTime;->sTimebaseDelta:J

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v6

    if-nez v6, :cond_9

    .line 52
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 53
    :cond_9
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 54
    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 55
    iget-object v6, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 56
    iget-object v6, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v6, :cond_a

    invoke-virtual {v1, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 57
    :cond_a
    iget-object v6, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    if-eqz v5, :cond_b

    .line 58
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda13;

    invoke-direct {v6, v1, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_b
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-nez v5, :cond_c

    .line 60
    new-instance v5, Lcom/motorola/camera/ui/UIManager;

    iget-object v6, v1, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v7, v1, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v5, v1, v6, v7}, Lcom/motorola/camera/ui/UIManager;-><init>(Lcom/motorola/camera/Controller;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    .line 61
    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 62
    :cond_c
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    .line 63
    iget-object v5, v5, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 64
    invoke-interface {v6}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->start()V

    goto :goto_2

    .line 65
    :cond_d
    iget v5, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_e

    .line 66
    iput v2, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 67
    iget-object v2, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 68
    :cond_e
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 69
    :cond_f
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 70
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 71
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 72
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mWindowInfoAdapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v1, :cond_10

    .line 73
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mPendingLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    if-eqz v1, :cond_10

    .line 75
    iput-object v3, p0, Lcom/motorola/camera/Camera;->mPendingLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    :cond_10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 78
    invoke-virtual {v1, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    .line 79
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_11

    .line 80
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_11
    return-void
.end method

.method public onStop()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 9
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 13
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v4, :cond_3

    .line 14
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iget-boolean v5, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    :cond_3
    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    iget-object v5, v0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Lcom/motorola/camera/ui/UIManager$1;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 22
    invoke-interface {v4}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->pause()V

    goto :goto_0

    .line 23
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v0, :cond_5

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_5

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-nez v0, :cond_7

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    .line 31
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/mlkit/common/internal/zza;->setupBrightnessBump(Landroid/view/Window;Z)V

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 33
    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 35
    :cond_8
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 36
    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_d

    .line 38
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 39
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 41
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 42
    :cond_9
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v4, :cond_a

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 43
    :cond_a
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    if-eqz v4, :cond_b

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 44
    :cond_b
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->stop()V

    .line 45
    sget-object v4, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-virtual {v4}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v4

    .line 46
    monitor-enter v4

    .line 47
    :try_start_0
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z

    .line 48
    iput-object v1, v4, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    .line 49
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->googleLensStatusChecked:Z

    .line 50
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable:Z

    .line 51
    iget-object v1, v4, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v4

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v1, :cond_c

    .line 54
    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 55
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    .line 56
    :cond_c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 57
    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v4

    throw p0

    .line 59
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mWindowInfoAdapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v0, :cond_e

    .line 60
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    :cond_e
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :catch_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v0, :cond_f

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    .line 66
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v4

    .line 67
    invoke-virtual {v0, p0, v3, v1, v4}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    .line 68
    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 69
    :cond_f
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 70
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTopResumedActivityChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onTopResumedActivityChanged(Z)V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iput-boolean p1, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.IS_UNSUPPORTED_DESKTOP_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f110508

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x4

    .line 7
    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 8
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iput p1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    const-string v1, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->hideSystemUi()V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$2;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public final shouldShowOnLockScreen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result p0

    return p0
.end method

.method public final showCTAPermissionsDialog()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    .line 5
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x3f5

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100bd

    const/16 v4, 0x3f6

    .line 7
    invoke-static {v3, v0, v2, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100bc

    const/16 v4, 0x3f7

    .line 8
    invoke-static {v3, v0, v2, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100bb

    const/16 v4, 0x3e9

    .line 9
    invoke-static {v3, v0, v2, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100be

    const/16 v4, 0x3f8

    .line 10
    invoke-static {v3, v0, v2, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100bf

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    invoke-direct {v2, p0}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    iput-object v3, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->appName:Ljava/lang/CharSequence;

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    .line 16
    new-instance v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;)V

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    .line 18
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;)V

    .line 19
    iput-object v3, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Camera;)V

    .line 21
    iput-object v3, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    new-instance v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    invoke-direct {v3, p0}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->title:Landroid/widget/TextView;

    .line 25
    iget-boolean v5, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    if-eqz v5, :cond_2

    const v5, 0x7f1102d0

    goto :goto_0

    :cond_2
    const v5, 0x7f110303

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->title:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_1
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    .line 29
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 30
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->checkBox:Landroid/widget/CheckBox;

    .line 31
    iget-boolean v6, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    if-eqz v6, :cond_4

    const v6, 0x7f11001b

    goto :goto_2

    :cond_4
    const v6, 0x7f11001c

    .line 32
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v4, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_6

    .line 34
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    .line 35
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 39
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 41
    :cond_5
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1:Landroid/widget/TextView;

    const v6, 0x7f110020

    .line 42
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 43
    :goto_3
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    .line 44
    new-instance v6, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    .line 46
    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_4

    .line 47
    :cond_6
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button1Container:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    .line 48
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_4
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2Container:Landroid/widget/RelativeLayout;

    .line 50
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 52
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 54
    :cond_7
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2:Landroid/widget/TextView;

    const v6, 0x7f11013e

    .line 55
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_5
    iget-object v4, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->button2Container:Landroid/widget/RelativeLayout;

    .line 57
    new-instance v6, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v3}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    iget-boolean v4, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    const/4 v6, -0x1

    const/16 v7, 0x11

    const v8, 0x800013

    const/4 v9, -0x2

    const v10, 0x7f12012a

    const v11, 0x7f12012c

    const v12, 0x7f12012b

    if-nez v4, :cond_f

    .line 61
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isCliDisplay(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 64
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_7

    .line 65
    :cond_8
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isLandscape(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 66
    iget-object v12, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->mActivityContext:Landroid/content/Context;

    .line 67
    invoke-static {v12}, Lkotlinx/coroutines/EventLoopKt;->isInMultiMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_6

    .line 68
    :cond_9
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_7

    .line 69
    :cond_a
    :goto_6
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 70
    :goto_7
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    const v11, 0x7f110304

    .line 74
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f110302

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 75
    iget-object v14, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->appName:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, ""

    goto :goto_8

    :cond_b
    iget-object v14, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->appName:Ljava/lang/CharSequence;

    :goto_8
    aput-object v14, v13, v5

    aput-object v11, v13, v0

    .line 76
    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 79
    new-instance v13, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$1;

    invoke-direct {v13, v2}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$1;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;)V

    .line 80
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v0

    .line 81
    invoke-virtual {v12, v13, v0, v11, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    :cond_c
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_9

    .line 84
    :cond_d
    throw v1

    .line 85
    :cond_e
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_9
    iget-object v0, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->messagesContainer:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {v0, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_f
    iget-object v0, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    const v4, 0x7f0700c5

    const v10, 0x7f0700c7

    const v11, 0x7f0700c6

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_c

    .line 89
    :cond_10
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v6, 0x7f1102cf

    .line 91
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 92
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_11

    const v6, 0x7f12012b

    .line 94
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v6, 0x7f0d00c4

    goto :goto_b

    .line 96
    :cond_11
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 97
    iget-object v6, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->mActivityContext:Landroid/content/Context;

    .line 98
    invoke-static {v6}, Lkotlinx/coroutines/EventLoopKt;->isInMultiMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_a

    :cond_12
    const v6, 0x7f12012a

    .line 99
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v6, 0x7f0d00c3

    goto :goto_b

    :cond_13
    :goto_a
    const v6, 0x7f12012c

    .line 101
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v6, 0x7f0d00c5

    .line 103
    :goto_b
    iget-boolean v13, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->isOnlyPermission:Z

    if-eqz v13, :cond_14

    .line 104
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    :cond_14
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 106
    iget-object v13, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->messagesContainer:Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {v13, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    new-instance v12, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v12, v2, v6, v3}, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;ILcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 109
    :cond_15
    :goto_c
    iget-object v0, v2, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->permissionDescMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    .line 110
    :cond_16
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f1102dc

    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f12012b

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_e

    .line 117
    :cond_17
    invoke-static {p0}, Lkotlinx/coroutines/EventLoopKt;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 118
    iget-object v2, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->mActivityContext:Landroid/content/Context;

    .line 119
    invoke-static {v2}, Lkotlinx/coroutines/EventLoopKt;->isInMultiMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_d

    :cond_18
    const v2, 0x7f12012a

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_e

    :cond_19
    :goto_d
    const v2, 0x7f12012c

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 124
    :goto_e
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 125
    iget-object v2, v3, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->messagesContainer:Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_1a
    :goto_f
    iput-object v3, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    .line 128
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 129
    iput-boolean v5, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->SUPER_SLOW_MOTION:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->PHOTOS_STABILIZE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->SETTINGS:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DOCUMENT:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eqz p1, :cond_f

    .line 2
    iget-object v4, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3
    iget-object v4, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v4

    const v5, 0x7f010020

    const v6, 0x7f010021

    .line 5
    invoke-static {p0, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 6
    invoke-virtual {v7, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 7
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v7

    iget-object v8, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 10
    :pswitch_0
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 11
    :pswitch_1
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 12
    :pswitch_2
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 13
    :pswitch_3
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 15
    :pswitch_5
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 16
    :pswitch_6
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 17
    :pswitch_7
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 18
    :pswitch_8
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->LIVESTREAM:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 19
    :pswitch_9
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 20
    :pswitch_a
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 21
    :pswitch_b
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 22
    :pswitch_c
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 23
    :goto_0
    iget-object v7, v7, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v9, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v9, "EXITTYP"

    invoke-virtual {v7, v9, v8}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    iget-object v7, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    const v9, 0x7f1100d7

    const/4 v10, 0x4

    if-eqz v7, :cond_c

    const/4 v11, 0x2

    if-eq v7, v11, :cond_2

    if-eq v7, v10, :cond_2

    const/16 v12, 0x12

    if-eq v7, v12, :cond_2

    packed-switch v7, :pswitch_data_1

    .line 25
    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 26
    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    new-instance p1, Lcom/motorola/camera/Camera$6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$6;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto/16 :goto_5

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    goto/16 :goto_5

    .line 29
    :goto_1
    :try_start_1
    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 31
    invoke-virtual {p0, v0, p1, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 32
    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 33
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 34
    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 35
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_5

    .line 36
    :cond_2
    :pswitch_e
    iget-object v7, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v12, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->CINEMAGRAPH:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v12, :cond_3

    if-eq v7, v3, :cond_3

    if-eq v7, v2, :cond_3

    if-eq v7, v1, :cond_3

    sget-object v13, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v13, :cond_3

    sget-object v13, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->YOUTUBE_LIVE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v13, :cond_3

    if-ne v7, v0, :cond_6

    :cond_3
    if-ne v7, v3, :cond_5

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_2
    iput-boolean v8, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 38
    iget-object v7, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-static {v7, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 39
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v2, :cond_7

    if-eq v7, v3, :cond_7

    if-eq v7, v12, :cond_7

    if-eq v7, v1, :cond_7

    if-eq v7, v0, :cond_7

    .line 40
    new-instance v0, Lcom/motorola/camera/Camera$4;

    invoke-direct {v0, p0, p1, v4}, Lcom/motorola/camera/Camera$4;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto/16 :goto_5

    .line 41
    :cond_7
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v0, v1, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_9

    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->WIFI_ADD_NETWORKS:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-ne v0, v1, :cond_8

    goto :goto_3

    .line 42
    :cond_8
    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_9
    :goto_3
    if-ne v0, v2, :cond_b

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v0

    const v1, 0x7f0a0228

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v11

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 47
    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    .line 49
    :cond_a
    invoke-static {p0, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_4
    move-object v4, v0

    .line 51
    :cond_b
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 53
    invoke-virtual {p0, v0, p1, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 54
    :catch_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 55
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 56
    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 57
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_5

    .line 58
    :cond_c
    iput-boolean v8, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 59
    :try_start_3
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 60
    iget v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.UID"

    const-string v2, "motcamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    .line 62
    iget-object v0, v0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    new-instance v0, Lcom/motorola/camera/Camera$5;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Camera$5;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto :goto_5

    .line 64
    :cond_e
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 65
    :catch_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 66
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 67
    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 68
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_f
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public final updateLocationSetting(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/LocationManager;->isPermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSplashPreview(ZZ)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DISABLE_CACHE_PREVIEW:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 4
    invoke-static {v0}, Landroidx/room/RoomMasterTable;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p2, :cond_8

    .line 6
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p2, :cond_8

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p2

    if-nez p2, :cond_3

    .line 9
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_DEF_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 10
    :goto_1
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 11
    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 12
    invoke-virtual {v0, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 13
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 14
    iget-object p2, p2, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    .line 15
    check-cast p2, Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 17
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 19
    invoke-virtual {v5, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getSplashPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    const-string v0, "_"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 22
    array-length v0, p2

    const/4 v5, 0x6

    if-lt v0, v5, :cond_8

    .line 23
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x2

    .line 25
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v0, 0x3

    .line 26
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x4

    .line 27
    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz p1, :cond_7

    .line 28
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/Camera;Landroid/graphics/Bitmap;III)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    const p1, 0x7f0a0390

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v8, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v9, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, v10

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 34
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    :goto_2
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "show SplashPreview dur:"

    .line 36
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotoCamera"

    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method
