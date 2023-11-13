.class public final Lcom/motorola/camera/limitfunctionality/ThermalHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "ThermalHandler.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final FEATURES_LEVEL_2:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mThermalLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MAX_ZOOM:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;-><init>()V

    return-void
.end method

.method public static isHighThermalLevel()Z
    .locals 2

    sget v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    invoke-static {}, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->isHighThermalLevel()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    const-class p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p0, p2, Landroid/os/Bundle;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    .line 3
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->THERMAL_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    .line 8
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->isHighThermalLevel()Z

    move-result p0

    const-string p1, "ThermalHandler"

    invoke-static {p1, p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->isHighThermalLevel()Z

    move-result p0

    const-string v0, "ThermalHandler"

    invoke-static {v0, p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
