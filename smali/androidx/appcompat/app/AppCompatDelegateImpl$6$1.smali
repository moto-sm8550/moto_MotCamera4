.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
.super Lkotlinx/coroutines/channels/AbstractChannelKt;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$6;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractChannelKt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 3
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
