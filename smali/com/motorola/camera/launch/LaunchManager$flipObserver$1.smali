.class public final Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;
.super Landroid/database/ContentObserver;
.source "LaunchManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/launch/LaunchManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/launch/LaunchManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    .line 4
    iget v1, v0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    if-eq p1, v1, :cond_8

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    if-eqz v0, :cond_7

    .line 6
    check-cast v0, Lcom/motorola/camera/Camera;

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 9
    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    move v1, v3

    goto :goto_2

    .line 10
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 12
    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cli_continuity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/L;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 16
    :goto_0
    iput-boolean v1, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    :cond_4
    :goto_1
    move v1, v2

    .line 17
    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_7

    .line 18
    :cond_5
    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    const-string v4, "FINISH_APP"

    .line 19
    invoke-static {v4, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v1, :cond_6

    const-string v1, "RECREATE_ACTIVITY"

    .line 20
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    :cond_6
    iget-object v0, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 22
    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 23
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 24
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    .line 25
    iput p1, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    :cond_8
    return-void
.end method
