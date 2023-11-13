.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaunchGalleryTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.widgets.gl.photoroll.LaunchGalleryTask$start$1$result$1"
    f = "LaunchGalleryTask.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $data:Lcom/motorola/camera/CameraData;

.field public final synthetic $isSplitMode:Z

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraData;",
            "Landroid/view/View;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    .line 5
    invoke-virtual {p1, v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$isSplitMode:Z

    .line 3
    invoke-virtual {p1, v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method
