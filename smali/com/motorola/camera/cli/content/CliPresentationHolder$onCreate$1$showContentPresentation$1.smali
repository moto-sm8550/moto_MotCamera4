.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliPresentationHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->showContentPresentation(Lkotlin/jvm/functions/Function2;)V
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
.field public final synthetic $createPresentation:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Lcom/motorola/camera/cli/CliEventListener;",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "Lcom/motorola/camera/cli/content/CliContentViewModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/cli/content/CliPresentationHolder;",
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

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->$createPresentation:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->$createPresentation:Lkotlin/jvm/functions/Function2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "createPresentation"

    .line 3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-interface {p0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/arch/view/BasePresentation;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget p0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    .line 11
    invoke-static {v0, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
