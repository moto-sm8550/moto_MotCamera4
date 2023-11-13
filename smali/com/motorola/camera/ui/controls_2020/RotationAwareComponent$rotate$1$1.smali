.class public final Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotationAwareComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Landroid/view/View;

.field public final synthetic $rotation:F


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Landroid/view/View;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Landroid/view/View;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
