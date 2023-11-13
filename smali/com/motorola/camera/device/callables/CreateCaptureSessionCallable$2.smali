.class public final Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;
.super Ljava/lang/Object;
.source "CreateCaptureSessionCallable.java"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onArcsoftDRSD(Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAuxiliaryData(Lcom/motorola/camera/mcf/McfAuxiliaryData;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfAuxiliaryData;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onModelLoadComplete(Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRawSceneFromMcf(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSceneProperties(Lcom/motorola/camera/mcf/McfSceneProp;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfSceneProp;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
