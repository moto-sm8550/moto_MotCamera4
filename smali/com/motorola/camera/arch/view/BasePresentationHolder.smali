.class public abstract Lcom/motorola/camera/arch/view/BasePresentationHolder;
.super Ljava/lang/Object;
.source "BasePresentationHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/transition/PathMotion;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public eventListener:Lcom/motorola/camera/cli/CliEventListener;

.field public isInitialized:Z

.field public final mainHandler:Landroid/os/Handler;

.field public final presentationDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "TVM;>;>;"
        }
    .end annotation
.end field

.field public viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    .line 4
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->mainHandler:Landroid/os/Handler;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "TVM;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/arch/view/BasePresentation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
