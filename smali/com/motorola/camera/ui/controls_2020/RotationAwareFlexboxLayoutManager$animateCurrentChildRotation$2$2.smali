.class public final Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotationAwareFlexboxLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotationAwareFlexboxLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationAwareFlexboxLayoutManager.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1849#2,2:87\n*S KotlinDebug\n*F\n+ 1 RotationAwareFlexboxLayoutManager.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2\n*L\n78#1:87,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic $currentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $targetRotation:F


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2;->$currentViews:Ljava/util/List;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2;->$targetRotation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2;->$currentViews:Ljava/util/List;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager$animateCurrentChildRotation$2$2;->$targetRotation:F

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
