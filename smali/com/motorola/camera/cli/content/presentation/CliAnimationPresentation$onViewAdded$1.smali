.class public final Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliAnimationPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 7
    new-instance v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const-string v0, "prepareStartFuture"

    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_0
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda13;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 11
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
