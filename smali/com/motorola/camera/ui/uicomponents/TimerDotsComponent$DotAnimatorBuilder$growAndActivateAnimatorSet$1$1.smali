.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerDotsComponent.kt"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $view:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->$view:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
