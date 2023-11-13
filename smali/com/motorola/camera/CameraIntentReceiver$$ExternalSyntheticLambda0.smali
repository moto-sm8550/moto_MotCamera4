.class public final synthetic Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/CameraIntentReceiver$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object p0, Lcom/motorola/camera/CameraIntentReceiver;->VIBRATE_PATTERN:[J

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/CameraIntentReceiver;->vibrateForQuickCapture(Landroid/content/Context;J)V

    return-void
.end method
