.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder;
.super Lcom/motorola/camera/arch/view/BasePresentationHolder;
.source "CliPresentationHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/arch/view/BasePresentationHolder<",
        "Lcom/motorola/camera/cli/content/CliContentViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field public orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/arch/view/BasePresentationHolder;-><init>(Landroid/content/Context;Lcom/motorola/camera/cli/CliEventListener;)V

    return-void
.end method

.method public static final access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/arch/view/BasePresentation;

    .line 2
    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit16 v1, v1, 0x168

    .line 3
    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/arch/view/BasePresentation;->onOrientationChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
