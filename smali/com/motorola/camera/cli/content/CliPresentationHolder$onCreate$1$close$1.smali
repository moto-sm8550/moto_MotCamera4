.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$close$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliPresentationHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->close()V
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
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$close$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$close$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
