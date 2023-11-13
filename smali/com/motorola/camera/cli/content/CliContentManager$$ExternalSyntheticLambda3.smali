.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    return-void
.end method


# virtual methods
.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    array-length p1, p1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    move v1, v2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 5
    iget-boolean v2, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-ne v1, v2, :cond_2

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v2, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-nez v2, :cond_3

    .line 7
    :cond_2
    iput-boolean v1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeAnimationContentStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
