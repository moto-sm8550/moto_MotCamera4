.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    sget-wide v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_START_ANIMATION_TIME:J

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

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
