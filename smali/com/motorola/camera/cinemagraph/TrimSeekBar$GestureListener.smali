.class public final Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TrimSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/TrimSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentSelectedFrame:I

.field public mCurrentSelectedHandle:I

.field public final mExtraTouchArea:F

.field public mShouldMove:Z

.field public final mTouchAreas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 v3, -0x1

    .line 5
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mExtraTouchArea:F

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 4
    iget p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    .line 5
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 9
    iget p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    .line 10
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 14
    iput-boolean v0, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z

    .line 15
    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    invoke-static {p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->access$400(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v0

    :cond_1
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;->onTrim(Z)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 7
    :cond_2
    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    if-ne p1, p4, :cond_4

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getStartTrimmingMax()F

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    iget-object p3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_3

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object p2, p2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    move p1, p4

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p1, p4

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget p2, p2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getEndTrimmingMin()F

    move-result p1

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p3

    iget-object p3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_5

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object p2, p2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    move p1, p4

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget p2, p2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 20
    :goto_2
    iget p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    if-eq p2, p1, :cond_7

    .line 21
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    .line 22
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 23
    invoke-virtual {p2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    .line 24
    :cond_6
    iget-object p2, p2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, p4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;->onFrameUpdate(IZ)V

    .line 25
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p4

    :cond_8
    return v0
.end method

.method public final trimHandleContainsInput(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->updateTouchAreas()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final updateTouchAreas()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v3, v2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 3
    iget v2, v2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    .line 4
    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mExtraTouchArea:F

    sub-float v5, v2, v4

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v4, v3, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    .line 7
    iget v3, v3, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr v3, v1

    sub-float/2addr v5, v3

    .line 8
    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mExtraTouchArea:F

    sub-float v3, v5, p0

    iget v6, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, p0

    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v6, v5, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 9
    iget p0, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, p0, v3

    if-lez v4, :cond_2

    sub-float/2addr p0, v3

    div-float/2addr p0, v1

    neg-float v1, p0

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    invoke-virtual {v2, p0, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    return-void
.end method
