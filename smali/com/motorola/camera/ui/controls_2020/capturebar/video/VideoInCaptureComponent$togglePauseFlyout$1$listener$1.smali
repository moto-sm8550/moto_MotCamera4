.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;
.super Ljava/lang/Object;
.source "VideoInCaptureComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->togglePauseFlyout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Landroid/view/View;

.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;


# direct methods
.method public constructor <init>(Landroid/view/View;ZLcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$it:Landroid/view/View;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$show:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$it:Landroid/view/View;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$show:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
