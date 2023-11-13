.class public final Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "BatterySaverHandler.java"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;,
        Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/limitfunctionality/LimiterHandler;",
        "Lcom/motorola/camera/settings/SettingChangeListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FEATURES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;

.field public mPowerManager:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MAX_ZOOM:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_1:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;-><init>(Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void
.end method

.method public final processEvent()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 6
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

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
    const-string v0, "BatterySaverHandler"

    .line 7
    invoke-static {v0, p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "power"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v0, v1}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;-><init>(Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;

    .line 5
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
