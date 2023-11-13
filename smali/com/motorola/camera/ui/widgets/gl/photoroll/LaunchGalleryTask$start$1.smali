.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaunchGalleryTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->start(Lcom/motorola/camera/ActivityStarter;Lcom/motorola/camera/CameraData;Landroid/view/View;Z)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.widgets.gl.photoroll.LaunchGalleryTask$start$1"
    f = "LaunchGalleryTask.kt"
    l = {
        0x45,
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $activityStarter:Lcom/motorola/camera/ActivityStarter;

.field public final synthetic $data:Lcom/motorola/camera/CameraData;

.field public final synthetic $isSplitMode:Z

.field public final synthetic $view:Landroid/view/View;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/ActivityStarter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraData;",
            "Landroid/view/View;",
            "Z",
            "Lcom/motorola/camera/ActivityStarter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$data:Lcom/motorola/camera/CameraData;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$isSplitMode:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$activityStarter:Lcom/motorola/camera/ActivityStarter;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$view:Landroid/view/View;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$isSplitMode:Z

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$activityStarter:Lcom/motorola/camera/ActivityStarter;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/ActivityStarter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$view:Landroid/view/View;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$isSplitMode:Z

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$activityStarter:Lcom/motorola/camera/ActivityStarter;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/ActivityStarter;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$data:Lcom/motorola/camera/CameraData;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$view:Landroid/view/View;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$isSplitMode:Z

    invoke-direct {v1, v5, v6, v7, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    check-cast p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 7
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 8
    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 9
    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$1;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->$activityStarter:Lcom/motorola/camera/ActivityStarter;

    invoke-direct {v4, v5, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$1;-><init>(Lcom/motorola/camera/ActivityStarter;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
