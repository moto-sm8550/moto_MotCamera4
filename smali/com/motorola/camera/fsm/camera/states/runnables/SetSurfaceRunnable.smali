.class public final Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SetSurfaceRunnable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 4
    check-cast p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "surfaceHolder"

    .line 5
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    new-instance p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    .line 7
    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;->cameraId:Ljava/lang/String;

    .line 8
    iget-object v0, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;->physicalCameraId:Ljava/lang/String;

    .line 9
    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 10
    iget-boolean v2, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;->isHighRes:Z

    .line 11
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    .line 12
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 13
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;->surface:Landroid/view/Surface;

    .line 14
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
