.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;
.super Ljava/lang/Object;
.source "CutoutModeComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 2
    iget-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
