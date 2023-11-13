.class public final synthetic Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean p0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;->f$0:Z

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/camera/service/CameraForegroundService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.motorola.camera3.EXTRA_FINISH"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
