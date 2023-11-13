.class public final synthetic Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;

    .line 3
    invoke-interface {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;->onBackInvoked()V

    goto :goto_0

    :cond_0
    return-void
.end method
