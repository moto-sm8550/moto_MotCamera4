.class public final synthetic Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/OpenCameraCallable$1;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Landroidx/transition/PathMotion;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/transition/PathMotion;->onError(Ljava/lang/String;)V

    return-void
.end method
