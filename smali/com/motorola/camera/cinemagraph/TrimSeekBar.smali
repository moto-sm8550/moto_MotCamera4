.class public Lcom/motorola/camera/cinemagraph/TrimSeekBar;
.super Landroid/view/View;
.source "TrimSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;,
        Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;,
        Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;,
        Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveHandle:I

.field public mAllowDrawDurationUpdate:Z

.field public mAutoPlay:Z

.field public mAuxBitmapRect:Landroid/graphics/Rect;

.field public mAuxDrawRect:Landroid/graphics/RectF;

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mCurrentFrame:I

.field public mDetector:Landroid/view/GestureDetector;

.field public mDrawDurationAdjust:J

.field public mDrawPlayHead:Z

.field public mDrawableRect:Landroid/graphics/Rect;

.field public mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

.field public mFrameInterval:I

.field public mFrameWidth:F

.field public mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

.field public mHandleActiveHeight:F

.field public mHandleHeight:F

.field public mHandlePaint:Landroid/graphics/Paint;

.field public mHandleWidth:F

.field public mIsBounce:Z

.field public mIsPlaying:Z

.field public mMinSelectionWidth:F

.field public mOutsideShadowPaint:Landroid/graphics/Paint;

.field public mPlayHeadPosition:F

.field public mPlayHeadWidth:F

.field public mPlaybackAnimator:Landroid/animation/ValueAnimator;

.field public mPlaybackHandler:Landroid/os/Handler;

.field public mPlaybackListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

.field public mRestrictPlayheadPosition:Z

.field public mSelectionEndFrame:I

.field public mSelectionRect:Landroid/graphics/RectF;

.field public mSelectionStartFrame:I

.field public mThumbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mThumbSpacing:F

.field public mThumbWidth:F

.field public mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

.field public mTotalFrameCount:I

.field public mTouchAreaPaint:Landroid/graphics/Paint;

.field public mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->init()V

    return-void
.end method

.method public static synthetic access$400(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setActiveHandle(I)V

    return-void
.end method

.method private getMinWidth()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mMinSelectionWidth:F

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private setActiveHandle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getEndTrimmingMin()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getMinWidth()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public declared-synchronized getSelectionEndFrame()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectionStartFrame()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStartTrimmingMax()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getMinWidth()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized hasThumbnails()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final init()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z

    .line 8
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    .line 9
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    .line 10
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    .line 11
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    const/16 v3, 0x42

    .line 12
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    .line 13
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v3, 0x0

    .line 14
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    .line 15
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    .line 16
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    .line 17
    iput v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v0

    .line 18
    iput v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    .line 19
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    .line 20
    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    .line 21
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mMinSelectionWidth:F

    .line 22
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    .line 30
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v4, 0x7f0603ad

    .line 32
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0603ae

    .line 34
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 35
    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0603d1

    .line 42
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;-><init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    .line 45
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDetector:Landroid/view/GestureDetector;

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Animator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

    return-void
.end method

.method public final declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    if-lez v0, :cond_0

    iget v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-float/2addr v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    add-float/2addr v4, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 21
    :cond_4
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 23
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    :goto_2
    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 24
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v0

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v2

    add-float/2addr v5, v0

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    invoke-virtual {v3, v6, v7, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr v0, v1

    .line 27
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 28
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    :goto_3
    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 29
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    add-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDrawableRectUpdated(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/graphics/Rect;

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p2, p1, p5

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 2
    iget-object p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 4
    invoke-virtual {p4, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->onDrawableRectUpdated(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateThumbDimens()V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-nez p1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f555555

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    :cond_4
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;->onTrim(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 8
    iput v0, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10
    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    if-ne p1, v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionStart(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionEnd(I)V

    .line 13
    :goto_0
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    move v0, v1

    :cond_2
    return v0
.end method

.method public final declared-synchronized play()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 3
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 5
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :try_start_4
    monitor-exit p0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    return-void
.end method

.method public declared-synchronized setBounceLoop(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFrameCount(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    add-int/lit8 p1, p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFrameInterval(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnFrameUpdateCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    return-void
.end method

.method public setOnTimelineEditCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    return-void
.end method

.method public setOnTrimCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    return-void
.end method

.method public setPlayHeadFrame(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ltz p1, :cond_2

    .line 2
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Frame out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlayHeadVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    return-void
.end method

.method public setRestrictPlayheadPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    return-void
.end method

.method public declared-synchronized setSelectionEnd(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;->onTimelineEdited(II)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSelectionStart(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;->onTimelineEdited(II)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateThumbDimens()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateDrawDuration(J)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    mul-long/2addr v3, v1

    .line 5
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updatePlaybackAnimator()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [F

    .line 2
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    aput v5, v0, v1

    iget v1, v4, Landroid/graphics/RectF;->right:F

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v2, [F

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    aput v6, v4, v1

    iget v1, v5, Landroid/graphics/RectF;->right:F

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    :goto_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-long v0, v0

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    add-long/2addr v4, v6

    mul-long/2addr v4, v0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public final updateSelectionDimens()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    .line 6
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    sget v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->$r8$clinit:I

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->updateTouchAreas()V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateThumbDimens()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    cmpl-float v1, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    move v6, v1

    move v1, v0

    move v0, v6

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    float-to-int v3, v4

    float-to-int v5, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p0, v3, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_1
    return-void
.end method
