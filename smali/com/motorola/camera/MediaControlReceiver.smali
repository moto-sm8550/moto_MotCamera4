.class public Lcom/motorola/camera/MediaControlReceiver;
.super Lcom/motorola/camera/CameraIntentReceiver;
.source "MediaControlReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/CameraIntentReceiver;-><init>()V

    return-void
.end method

.method public static isMediaAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "motorola.camera.intent.action.TAKE_PICTURE"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.TAKE_SELFIE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.SWITCH_CAMERA"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final onActivityRunning(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "motorola.intent.extra.CALLER"

    const-string v1, "moto-voice"

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
