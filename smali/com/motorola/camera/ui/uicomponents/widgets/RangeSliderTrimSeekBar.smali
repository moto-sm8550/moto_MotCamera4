.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;
.super Lcom/motorola/camera/cinemagraph/TrimSeekBar;
.source "RangeSliderTrimSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;,
        Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;,
        Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;,
        Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeSliderTrimSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeSliderTrimSeekBar.kt\ncom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,694:1\n1849#2,2:695\n1849#2,2:697\n1849#2,2:699\n2505#2,7:705\n11328#3:701\n11663#3,3:702\n13536#3,2:712\n13536#3,2:714\n13601#3,3:716\n*S KotlinDebug\n*F\n+ 1 RangeSliderTrimSeekBar.kt\ncom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar\n*L\n123#1:695,2\n126#1:697,2\n135#1:699,2\n172#1:705,7\n172#1:701\n172#1:702,3\n199#1:712,2\n274#1:714,2\n284#1:716,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0015\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0004\u001f !\"J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0002R\'\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR*\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R*\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R*\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00188\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;",
        "Lcom/motorola/camera/cinemagraph/TrimSeekBar;",
        "",
        "getStartTrimmingMax",
        "getEndTrimmingMin",
        "getRangeCenterX",
        "Ljava/util/HashSet;",
        "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;",
        "Lkotlin/collections/HashSet;",
        "rangeListeners",
        "Ljava/util/HashSet;",
        "getRangeListeners",
        "()Ljava/util/HashSet;",
        "",
        "value",
        "maximumRange",
        "I",
        "getMaximumRange",
        "()I",
        "setMaximumRange",
        "(I)V",
        "minimumRange",
        "getMinimumRange",
        "setMinimumRange",
        "",
        "values",
        "[I",
        "getValues",
        "()[I",
        "setValues",
        "([I)V",
        "Companion",
        "GestureListener",
        "RangeSliderListener",
        "TrackThumb",
        "MotCamera4-v9.0.50.15_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;


# instance fields
.field public final activeArea:Landroid/graphics/RectF;

.field public activeThumbIndex:I

.field public final activeTrackPaint:Landroid/graphics/Paint;

.field public final animatedHandleRect:Landroid/graphics/Rect;

.field public downEventHandledByParent:Z

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

.field public final handleHeight:F

.field public final handleHeightActive:F

.field public final handlePaint:Landroid/graphics/Paint;

.field public final handleRect:Landroid/graphics/RectF;

.field public final handleTouchRect:Landroid/graphics/RectF;

.field public final inactiveTrackPaint:Landroid/graphics/Paint;

.field public maximumRange:I

.field public minimumRange:I

.field public moveHandleActive:Z

.field public final rangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedFramesAreaPaint:Landroid/graphics/Paint;

.field public final selectedFramesBorderPaint:Landroid/graphics/Paint;

.field public final sliderHeight:I

.field public final sliderTopPadding:I

.field public stateAnimator:Landroid/animation/AnimatorSet;

.field public final thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

.field public values:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->Companion:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    .line 3
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 4
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v3, 0x7f0603ac

    .line 8
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 9
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x2

    .line 10
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    new-instance v4, Landroid/graphics/DashPathEffect;

    new-array v5, v3, [F

    .line 12
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v6

    aput v6, v5, v2

    const/4 v6, 0x0

    .line 13
    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 14
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 16
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v4, 0x7f0603ab

    .line 19
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 20
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    new-instance v4, Landroid/graphics/DashPathEffect;

    new-array v5, v3, [F

    .line 22
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v7

    aput v7, v5, v0

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v8

    aput v8, v5, v2

    .line 23
    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 24
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeTrackPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeight:F

    const/16 p2, 0xc

    .line 26
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeightActive:F

    .line 27
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    .line 28
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    .line 29
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 31
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v4, 0x7f060321

    .line 33
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 34
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handlePaint:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 37
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 40
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesBorderPaint:Landroid/graphics/Paint;

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 44
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    .line 50
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/16 v4, 0xa

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v3, [I

    fill-array-data p2, :array_0

    goto :goto_1

    :cond_1
    new-array p2, v3, [I

    fill-array-data p2, :array_1

    :goto_1
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    const/16 p2, 0x20

    .line 55
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    const/16 v5, 0x28

    .line 56
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v5

    float-to-int v5, v5

    new-array v6, v3, [Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 57
    sget-object v7, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->Companion:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;

    const v8, 0x7f0802b3

    invoke-virtual {v7, p1, v8, v5}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;->createTrackThumb(Landroid/content/Context;II)Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    move-result-object v8

    aput-object v8, v6, v0

    const v8, 0x7f0802b4

    .line 58
    invoke-virtual {v7, p1, v8, v5}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$Companion;->createTrackThumb(Landroid/content/Context;II)Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    move-result-object p1

    aput-object p1, v6, v2

    .line 59
    iput-object v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    sub-int/2addr v5, p2

    .line 60
    div-int/2addr v5, v3

    aget-object p1, v6, v0

    .line 61
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 62
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setAutoPlay(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    .line 66
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionStart(I)V

    const/16 p1, 0x55

    .line 68
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionEnd(I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060322

    sget-object v5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 5
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    aput v7, v6, v3

    aput v0, v6, v2

    const-string v0, "color"

    .line 7
    invoke-static {v4, v0, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    if-eq v4, v1, :cond_4

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v7, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 10
    iget v9, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v9, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 11
    invoke-direct {v1, v4, v8, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    .line 13
    :goto_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 14
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 15
    new-instance v1, Landroid/animation/RectEvaluator;

    invoke-direct {v1}, Landroid/animation/RectEvaluator;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    invoke-static {v1, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 16
    new-instance v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    new-instance v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    .line 19
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method


# virtual methods
.method public getEndTrimmingMin()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 3
    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public final getMaximumRange()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    return p0
.end method

.method public final getMinimumRange()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    return p0
.end method

.method public final getRangeCenterX()F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 4
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 5
    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    .line 11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    .line 12
    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_3

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public final getRangeListeners()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method public getStartTrimmingMax()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 3
    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public final getValues()[I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    const/4 v9, 0x0

    .line 11
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v1, v1, v2

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 14
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 15
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    .line 16
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    .line 18
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    move v7, v0

    .line 19
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 23
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    .line 24
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 26
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    const/4 v10, 0x1

    aget-object v3, v3, v10

    .line 27
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 28
    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    .line 29
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    .line 31
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 32
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 36
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v3, v3, v2

    .line 37
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 38
    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    .line 39
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v1, v1, v10

    .line 41
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 42
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 43
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v4, v4

    .line 44
    invoke-virtual {p1, v1, v9, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 45
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    .line 46
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    invoke-virtual {p0, v10}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 51
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    .line 52
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v1

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v9, v3, v2

    aput v9, v3, v10

    const/4 v2, 0x2

    aput v9, v3, v2

    aput v9, v3, v0

    const/4 v0, 0x4

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 55
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final onDrawableRectUpdated(Landroid/graphics/Rect;)V
    .locals 2

    const-string/jumbo v0, "viewDrawableRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 3
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->downEventHandledByParent:Z

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->downEventHandledByParent:Z

    if-eqz v1, :cond_2

    .line 4
    invoke-super {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 9
    iget v3, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 11
    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->setPressed(Z)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 13
    iput v4, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    .line 14
    iput-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    .line 15
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    .line 18
    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    .line 20
    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-static {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    :cond_5
    return v1
.end method

.method public final restrictValues([I)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    .line 2
    aget v0, p1, v3

    aget v1, p1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 3
    aget v1, p1, v3

    aget v4, p1, v2

    sub-int/2addr v1, v4

    .line 4
    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    if-gt v1, v4, :cond_1

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-lt v1, v5, :cond_1

    .line 5
    aget v5, p1, v2

    if-ltz v5, :cond_1

    aget v5, p1, v3

    iget v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    .line 6
    :goto_1
    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-ge v1, v6, :cond_2

    move v1, v6

    :cond_2
    if-le v1, v4, :cond_3

    move v1, v4

    .line 7
    :cond_3
    aget v7, p1, v2

    if-gez v7, :cond_4

    .line 8
    aput v2, p1, v2

    .line 9
    aput v1, p1, v3

    goto/16 :goto_6

    .line 10
    :cond_4
    aget v7, p1, v3

    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-le v7, p0, :cond_5

    .line 11
    aput p0, p1, v3

    sub-int/2addr p0, v1

    .line 12
    aput p0, p1, v2

    goto/16 :goto_6

    .line 13
    :cond_5
    aget v1, p1, v2

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v0, v7

    if-ge v1, v7, :cond_6

    move v1, v7

    .line 14
    :cond_6
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v0, v7

    if-le v1, v7, :cond_7

    move v1, v7

    :cond_7
    if-gez v1, :cond_8

    move v1, v2

    .line 15
    :cond_8
    aput v1, p1, v2

    .line 16
    aget v1, p1, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-le v1, v4, :cond_9

    move v1, v4

    .line 17
    :cond_9
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_a

    move v1, v6

    :cond_a
    if-le v1, p0, :cond_b

    goto :goto_2

    :cond_b
    move p0, v1

    .line 18
    :goto_2
    aput p0, p1, v3

    goto :goto_6

    .line 19
    :cond_c
    aget v1, p1, v0

    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_d

    add-int/lit8 v4, v0, -0x1

    .line 20
    aget v4, p1, v4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    add-int/2addr v4, v5

    goto :goto_3

    :cond_d
    add-int/lit8 v4, v0, 0x1

    .line 21
    aget v4, p1, v4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    sub-int/2addr v4, v5

    if-gez v4, :cond_e

    move v4, v2

    :cond_e
    :goto_3
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_f

    add-int/lit8 v5, v0, -0x1

    .line 22
    aget v5, p1, v5

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    add-int/2addr v5, v6

    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-le v5, p0, :cond_10

    move v5, p0

    goto :goto_4

    :cond_f
    add-int/lit8 v5, v0, 0x1

    .line 23
    aget v5, p1, v5

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    sub-int/2addr v5, p0

    :cond_10
    :goto_4
    if-ge v1, v4, :cond_11

    move p0, v4

    goto :goto_5

    :cond_11
    move p0, v1

    :goto_5
    if-le p0, v5, :cond_12

    move p0, v5

    .line 24
    :cond_12
    aput p0, p1, v0

    if-gt v1, v5, :cond_13

    if-ge v1, v4, :cond_14

    :cond_13
    move v2, v3

    :cond_14
    move v5, v2

    :goto_6
    return v5
.end method

.method public final setMaximumRange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setMinimumRange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setValues([I)V
    .locals 4

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 2
    array-length v0, p1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    const-string/jumbo v0, "values array must have at least two values"

    goto :goto_0

    .line 3
    :cond_0
    aget v0, p1, v2

    aget v3, p1, v1

    if-le v0, v3, :cond_1

    const-string/jumbo v0, "values[1] must be greater than or equal values[0]"

    goto :goto_0

    .line 4
    :cond_1
    aget v0, p1, v2

    if-gez v0, :cond_2

    const-string/jumbo v0, "values[0] must be greater than or equal 0"

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-lez v0, :cond_3

    aget v3, p1, v1

    if-le v3, v0, :cond_3

    const-string/jumbo v0, "values[1] must be less than or equal total frame count"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_5
    :goto_1
    aget v0, p1, v1

    aget v1, p1, v2

    sub-int/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    if-le v0, v1, :cond_6

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    .line 11
    invoke-interface {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onMaximumRangeLimitReached()V

    goto :goto_2

    .line 12
    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-ge v0, v1, :cond_7

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    .line 15
    invoke-interface {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onMinimumRangeLimitReached()V

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)Z

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    .line 21
    invoke-interface {v1, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onValueChanged([I)V

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    return-void
.end method

.method public final toPixels(I)F
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public final updateUIElementsPosition(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    .line 3
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v4, :cond_2

    aget-object v9, v3, v6

    add-int/lit8 v10, v7, 0x1

    .line 4
    iget-object v11, v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    aget v7, v12, v7

    int-to-float v7, v7

    iget v12, v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr v7, v12

    add-float/2addr v7, v11

    .line 5
    new-instance v11, Landroid/graphics/PointF;

    .line 6
    iget-object v12, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v1, v12

    .line 7
    invoke-direct {v11, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    iput-object v11, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 9
    iget-object v7, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget v11, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->minTouchArea:I

    if-ge v7, v11, :cond_0

    move v7, v11

    :cond_0
    div-int/2addr v7, v8

    .line 10
    iget-object v11, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->minTouchArea:I

    if-ge v11, v12, :cond_1

    move v11, v12

    :cond_1
    div-int/2addr v11, v8

    .line 11
    new-instance v12, Landroid/graphics/RectF;

    iget-object v13, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    int-to-float v7, v7

    sub-float v15, v14, v7

    iget v13, v13, Landroid/graphics/PointF;->y:F

    int-to-float v11, v11

    sub-float v2, v13, v11

    add-float/2addr v14, v7

    add-float/2addr v13, v11

    invoke-direct {v12, v15, v2, v14, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    iget-object v2, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    iget-object v2, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 15
    invoke-virtual {v12, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 16
    iget-object v7, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v11, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v7, v11

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 18
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget-object v13, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v11, v13

    div-float/2addr v11, v8

    .line 19
    invoke-virtual {v12, v7, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    invoke-virtual {v12, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 21
    iget-object v7, v9, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 22
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    .line 23
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    .line 24
    iget v3, v3, Landroid/graphics/RectF;->left:F

    aget-object v4, v1, v5

    .line 25
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    .line 26
    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v6, v3, v4

    if-gez v6, :cond_3

    .line 27
    aget-object v1, v1, v5

    .line 28
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    int-to-float v6, v8

    div-float v7, v3, v6

    .line 29
    invoke-virtual {v1, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 30
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v1, v1, v2

    .line 31
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->touchRect:Landroid/graphics/RectF;

    neg-float v3, v3

    div-float/2addr v3, v6

    .line 32
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 33
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v4, v3, v5

    .line 34
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 35
    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 36
    aget-object v3, v3, v2

    .line 37
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 38
    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    .line 39
    invoke-virtual {v1, v4, v7, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;

    aget-object v3, v1, v2

    .line 41
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 42
    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v1, v5

    .line 43
    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 44
    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 45
    aget-object v2, v1, v2

    .line 46
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 47
    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v5

    .line 48
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$TrackThumb;->position:Landroid/graphics/PointF;

    .line 49
    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 50
    iget-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-eqz v1, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f400000    # 0.75f

    :goto_1
    mul-float/2addr v2, v4

    if-eqz v1, :cond_5

    .line 51
    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeightActive:F

    goto :goto_2

    :cond_5
    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeight:F

    .line 52
    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    sub-float v6, v3, v2

    iget-object v7, v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v7

    add-float/2addr v3, v2

    int-to-float v2, v7

    add-float/2addr v2, v1

    invoke-virtual {v4, v6, v9, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    const/16 v1, 0x24

    .line 54
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v1

    sub-float/2addr v1, v2

    int-to-float v2, v8

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-gez v1, :cond_6

    move v1, v5

    .line 55
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 56
    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 57
    invoke-virtual {v2, v4, v6, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    iget-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-nez v1, :cond_8

    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_7

    goto :goto_3

    .line 59
    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 60
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    .line 61
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 62
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 63
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
