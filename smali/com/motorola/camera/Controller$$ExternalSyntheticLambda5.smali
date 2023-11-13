.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Controller;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Controller;

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->updateInsets(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_0
    return-object p2
.end method
