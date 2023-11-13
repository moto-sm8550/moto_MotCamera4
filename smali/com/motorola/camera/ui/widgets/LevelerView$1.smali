.class public final Lcom/motorola/camera/ui/widgets/LevelerView$1;
.super Ljava/lang/Object;
.source "LevelerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/LevelerView;->setDisplayOrientation(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/LevelerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/LevelerView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Lcom/motorola/camera/ui/widgets/LevelerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;->this$0:Lcom/motorola/camera/ui/widgets/LevelerView;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
