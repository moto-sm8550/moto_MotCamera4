.class public final Lcom/motorola/camera/limitfunctionality/BatteryHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "BatteryHandler.java"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;
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
.field public static final FEATURES_10_PERC:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURES_5_PERC:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mACCharging:Z

.field public mBatteryLevel:F

.field public final mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MAX_ZOOM:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_2:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    .line 2
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_5_PERC:Ljava/util/EnumSet;

    .line 3
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;-><init>(Lcom/motorola/camera/limitfunctionality/BatteryHandler;)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    goto :goto_0

    .line 5
    :cond_0
    iget p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    const v0, 0x3d4ccccd

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_5_PERC:Ljava/util/EnumSet;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    :goto_0
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

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processEvent()V

    return-void
.end method

.method public final processBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    const-string v0, "level"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_2

    :cond_1
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processEvent()V

    return-void
.end method

.method public final processEvent()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    xor-int/2addr v0, v2

    iget p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    const v3, 0x3dcccccd

    cmpg-float p0, p0, v3

    if-gez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string p0, "BatteryHandler"

    .line 5
    invoke-static {p0, v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
