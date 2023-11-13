.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RangeSliderTrimSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GestureListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeSliderTrimSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeSliderTrimSeekBar.kt\ncom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,694:1\n1849#2,2:695\n1849#2,2:701\n11328#3:697\n11663#3,3:698\n1620#3,6:703\n*S KotlinDebug\n*F\n+ 1 RangeSliderTrimSeekBar.kt\ncom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener\n*L\n505#1:695,2\n576#1:701,2\n544#1:697\n544#1:698,3\n590#1:703,6\n*E\n"
.end annotation


# instance fields
.field public direction:F

.field public moveRestricted:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

.field public trimEnd:F

.field public trimStart:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValueFromPosition(F)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->Companion:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 4
    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 4
    array-length v3, v2

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    .line 5
    aget-object v6, v2, v4

    .line 6
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 8
    :goto_1
    iput v4, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 10
    iget v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v3, 0x1

    if-eq v2, v5, :cond_2

    .line 11
    iget-object p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 12
    aget-object p1, p1, v2

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->setPressed(Z)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    .line 15
    iput-boolean p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 17
    iget-boolean v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-nez v1, :cond_3

    .line 18
    iget v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    if-eq v1, v5, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result p1

    int-to-float p1, p1

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->Companion:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;

    .line 21
    iget v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v2

    .line 22
    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    .line 23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimStart:F

    .line 25
    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result p1

    int-to-float p1, p1

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 27
    iget v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v2

    .line 28
    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    .line 29
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 30
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimEnd:F

    .line 31
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    .line 34
    invoke-interface {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onStartTrackingTouch()V

    goto :goto_3

    .line 35
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    .line 36
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const-string p4, "e1"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 2
    iget p4, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    .line 3
    iget-boolean v2, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eq p4, v0, :cond_1

    .line 4
    iget-object v2, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 5
    aget-object v2, v2, p4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eq p4, v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p1

    iget-object p4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 8
    iget p4, p4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    .line 9
    aget p1, p1, p4

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p1

    aget p1, p1, v1

    iget-object p4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p4

    aget p4, p4, v5

    add-int/2addr p1, p4

    div-int/2addr p1, v4

    .line 11
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->getValueFromPosition(F)I

    move-result p4

    .line 12
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->direction:F

    cmpg-float v0, v0, v6

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v7, v6, v0

    if-gez v7, :cond_4

    if-lt p4, p1, :cond_5

    :cond_4
    cmpl-float v0, v6, v0

    if-lez v0, :cond_6

    if-le p4, p1, :cond_6

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    if-eqz v2, :cond_c

    .line 14
    iget-object p1, v2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    if-eqz v3, :cond_8

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    goto :goto_4

    :cond_8
    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    .line 16
    :goto_4
    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 17
    iget-object p1, v2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 18
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimStart:F

    cmpg-float v0, p2, p4

    if-gez v0, :cond_9

    move p2, p4

    :cond_9
    iget p4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimEnd:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_a

    move p2, p4

    :cond_a
    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    array-length p4, p1

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    array-length p4, p1

    :goto_5
    if-ge v1, p4, :cond_b

    aget-object v0, p1, v1

    .line 23
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 24
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->getValueFromPosition(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    goto :goto_7

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 27
    aget-object p2, p1, v1

    .line 28
    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 29
    iget p2, p2, Landroid/graphics/PointF;->x:F

    aget-object p1, p1, v5

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 31
    iget p1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    sub-float/2addr p2, p3

    .line 32
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->getValueFromPosition(F)I

    move-result p1

    .line 33
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p2

    aget p2, p2, v5

    iget-object p4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p4

    aget p4, p4, v1

    sub-int/2addr p2, p4

    div-int/2addr p2, v4

    add-int p4, p1, p2

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v0

    if-le p4, v0, :cond_d

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_6

    :cond_d
    sub-int p4, p1, p2

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v0

    if-ge p4, v0, :cond_e

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result p1

    add-int/2addr p1, p2

    :cond_e
    :goto_6
    new-array p4, v4, [I

    sub-int v0, p1, p2

    aput v0, p4, v1

    add-int/2addr p1, p2

    aput p1, p4, v5

    move-object p1, p4

    .line 38
    :goto_7
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->direction:F

    .line 39
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    const-string p4, "copyOf(this, size)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    .line 40
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v5
.end method
