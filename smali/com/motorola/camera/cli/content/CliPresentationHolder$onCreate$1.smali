.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;
.super Ljava/lang/Object;
.source "CliPresentationHolder.kt"

# interfaces
.implements Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeOrientation(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$changeOrientation$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$close$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$close$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final showContentPresentation(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Lcom/motorola/camera/cli/CliEventListener;",
            "+",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "Lcom/motorola/camera/cli/content/CliContentViewModel;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
