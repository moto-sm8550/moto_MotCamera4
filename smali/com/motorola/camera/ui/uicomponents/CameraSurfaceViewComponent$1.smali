.class public final Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;
.super Ljava/lang/Object;
.source "CameraSurfaceViewComponent.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->animateModeSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

.field public final synthetic val$previewChange:Lcom/motorola/camera/ui/PreviewChange;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;Lcom/motorola/camera/ui/PreviewChange;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;->this$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;->val$previewChange:Lcom/motorola/camera/ui/PreviewChange;

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
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;->val$previewChange:Lcom/motorola/camera/ui/PreviewChange;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;->this$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
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
