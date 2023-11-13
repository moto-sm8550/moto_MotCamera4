.class public abstract Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "RotationAwareComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotationAwareComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationAwareComponent.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareComponent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1849#2,2:154\n1849#2,2:156\n1849#2,2:158\n*S KotlinDebug\n*F\n+ 1 RotationAwareComponent.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareComponent\n*L\n47#1:154,2\n61#1:156,2\n67#1:158,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;


# instance fields
.field public valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p2, "ofInt(0, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getLimitRotatedViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public getRotatedDrawables()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getRotatedViews()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public rotate(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    return-void
.end method

.method public final rotate(IZ)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotateDrawables(IZ)V

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f0b0056

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedViews()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;->getRotation(FI)F

    move-result v4

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 10
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    invoke-direct {v6, v3, v4}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(Landroid/view/View;F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 12
    :cond_3
    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getLimitRotatedViews()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 15
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;->getRotation(FI)F

    move-result v0

    if-eqz v2, :cond_5

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v0

    .line 17
    :goto_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final rotateDrawables(IZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedDrawables()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "RotationAwareComponent"

    if-nez v1, :cond_0

    const-string v1, "RotateDrawable is null"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    instance-of v3, v1, Landroid/graphics/drawable/RotateDrawable;

    if-nez v3, :cond_1

    const-string v1, "Not RotateDrawable instance"

    .line 5
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    check-cast v1, Landroid/graphics/drawable/RotateDrawable;

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-ne v2, p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    sub-int v3, p1, v2

    if-ltz v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit16 v3, v3, 0x168

    :goto_1
    const/16 v4, 0xb4

    if-le v3, v4, :cond_5

    add-int/lit16 v3, v3, -0x168

    :cond_5
    const/4 v4, 0x0

    if-gez v3, :cond_7

    rsub-int v2, v2, 0x168

    .line 8
    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, 0x9c4

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_6

    move v2, v4

    :cond_6
    rsub-int v3, p1, 0x168

    .line 9
    div-int/lit8 v3, v3, 0x5a

    mul-int/lit16 v3, v3, 0x9c4

    goto :goto_2

    .line 10
    :cond_7
    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, -0x9c4

    .line 11
    div-int/lit8 v3, p1, 0x5a

    mul-int/lit16 v3, v3, -0x9c4

    if-nez v3, :cond_8

    const/16 v3, -0x2710

    .line 12
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_9

    const v6, 0x7f0b0056

    .line 13
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    goto :goto_3

    :cond_9
    const-wide/16 v5, 0x0

    :goto_3
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v4

    const/4 v2, 0x1

    aput v3, v7, v2

    .line 14
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RotateDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotateDrawableRotation$2;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotateDrawableRotation$2;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method
