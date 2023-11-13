.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;
.super Ljava/lang/Object;
.source "AnchorViewLayoutDelegateImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchorViewLayoutDelegateImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchorViewLayoutDelegateImpl.kt\ncom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,29:1\n1#2:30\n*E\n"
.end annotation


# instance fields
.field public listener:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->unregisterLayoutListener()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->view:Landroid/view/View;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->listener:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->listener:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final unregisterLayoutListener()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->listener:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->view:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
