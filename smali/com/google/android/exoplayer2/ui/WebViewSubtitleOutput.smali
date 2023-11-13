.class public final Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# instance fields
.field public bottomPaddingFraction:F

.field public final canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

.field public defaultTextSize:F

.field public defaultTextSizeType:I

.field public style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field public textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final webView:Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    const v1, 0x3d5a511a

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    const v2, 0x3da3d70a

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->webView:Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static anchorTypeToTranslatePercent(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x64

    return p0

    :cond_1
    const/16 p0, -0x32

    return p0
.end method

.method public static convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 2

    const-string v0, "center"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "end"

    return-object p0

    :cond_2
    const-string/jumbo p0, "start"

    return-object p0
.end method


# virtual methods
.method public final convertTextSizeToCss(IF)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string/jumbo p0, "unset"

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, p2

    const-string p1, "%.2fpx"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->updateWebView()V

    :cond_0
    return-void
.end method

.method public final update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 2
    iput p3, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 3
    iput p4, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 4
    iput p5, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/Cue;

    .line 9
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateWebView()V
    .locals 38

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v4, v4, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    .line 3
    invoke-static {v4}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v6, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 4
    invoke-virtual {v0, v4, v6}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x3f99999a

    .line 5
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v3, v8

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 6
    iget v9, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    const/4 v10, 0x3

    const-string/jumbo v11, "unset"

    if-eq v9, v6, :cond_3

    if-eq v9, v8, :cond_2

    if-eq v9, v10, :cond_1

    if-eq v9, v2, :cond_0

    move-object v2, v11

    goto :goto_0

    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 7
    iget v7, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 8
    invoke-static {v7}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "-0.05em -0.05em 0.15em %s"

    .line 9
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 10
    iget v7, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 11
    invoke-static {v7}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "0.06em 0.08em 0.15em %s"

    .line 12
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-array v2, v6, [Ljava/lang/Object;

    .line 13
    iget v7, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    invoke-static {v7}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "0.1em 0.12em 0.15em %s"

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    .line 14
    iget v7, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 15
    invoke-static {v7}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 16
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v3, v10

    const-string v2, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    .line 17
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "default_bg"

    .line 20
    invoke-static {v3}, Lkotlin/io/ExceptionsKt;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v9, v9, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    .line 21
    invoke-static {v9}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "background-color:%s;"

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v6

    move v6, v5

    .line 23
    :goto_1
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_48

    .line 24
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/text/Cue;

    .line 25
    iget v10, v8, Lcom/google/android/exoplayer2/text/Cue;->position:F

    const v12, -0x800001

    cmpl-float v13, v10, v12

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v13, :cond_4

    mul-float/2addr v10, v14

    goto :goto_2

    :cond_4
    const/high16 v10, 0x42480000    # 50.0f

    .line 26
    :goto_2
    iget v13, v8, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v13}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v13

    .line 27
    iget v15, v8, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v12, v15, v12

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const-string v14, "%.2f%%"

    if-eqz v12, :cond_8

    .line 28
    iget v12, v8, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-eq v12, v7, :cond_6

    new-array v4, v7, [Ljava/lang/Object;

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v15, v12

    .line 29
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 30
    iget v12, v8, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    if-ne v12, v7, :cond_5

    .line 31
    iget v12, v8, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v12

    neg-int v12, v12

    goto :goto_3

    .line 32
    :cond_5
    iget v12, v8, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v12

    :goto_3
    move v15, v6

    move/from16 v17, v12

    goto :goto_4

    :cond_6
    cmpl-float v6, v15, v16

    const-string v12, "%.2fem"

    if-ltz v6, :cond_7

    new-array v6, v7, [Ljava/lang/Object;

    mul-float/2addr v15, v4

    .line 33
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v6, v15

    invoke-static {v12, v6}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v6, v15

    move/from16 v17, v6

    goto :goto_4

    :cond_7
    new-array v6, v7, [Ljava/lang/Object;

    neg-float v15, v15

    sub-float v15, v15, v17

    mul-float/2addr v15, v4

    .line 34
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v6, v15

    invoke-static {v12, v6}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v6, v15

    move/from16 v17, v6

    move v15, v7

    goto :goto_4

    :cond_8
    new-array v4, v7, [Ljava/lang/Object;

    .line 35
    iget v12, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float v17, v17, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v4, v6

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v15, -0x64

    move/from16 v17, v15

    move v15, v6

    .line 36
    :goto_4
    iget v12, v8, Lcom/google/android/exoplayer2/text/Cue;->size:F

    const v19, -0x800001

    cmpl-float v19, v12, v19

    if-eqz v19, :cond_9

    move/from16 v19, v13

    new-array v13, v7, [Ljava/lang/Object;

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v12, v12, v18

    .line 37
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v13, v6

    invoke-static {v14, v13}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_9
    move/from16 v19, v13

    const-string v6, "fit-content"

    .line 38
    :goto_5
    iget-object v12, v8, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v12

    .line 39
    iget v13, v8, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    if-eq v13, v7, :cond_b

    const/4 v7, 0x2

    if-eq v13, v7, :cond_a

    const-string v7, "horizontal-tb"

    goto :goto_6

    :cond_a
    const-string/jumbo v7, "vertical-lr"

    goto :goto_6

    :cond_b
    const-string/jumbo v7, "vertical-rl"

    .line 40
    :goto_6
    iget v13, v8, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v14, v8, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v13

    .line 41
    iget-boolean v14, v8, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v14, :cond_c

    iget v14, v8, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    goto :goto_7

    :cond_c
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v14, v14, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->windowColor:I

    :goto_7
    invoke-static {v14}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v14

    .line 42
    iget v0, v8, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const-string v20, "left"

    const-string/jumbo v21, "top"

    move-object/from16 v22, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    if-eqz v15, :cond_d

    const-string v21, "bottom"

    :cond_d
    const/4 v3, 0x2

    goto :goto_a

    :cond_e
    if-eqz v15, :cond_11

    goto :goto_8

    :cond_f
    if-eqz v15, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    const-string v20, "right"

    :cond_11
    :goto_9
    const/4 v3, 0x2

    move-object/from16 v37, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v37

    :goto_a
    if-eq v0, v3, :cond_13

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    goto :goto_b

    :cond_12
    const-string/jumbo v0, "width"

    move/from16 v37, v19

    move/from16 v19, v17

    move/from16 v17, v37

    goto :goto_c

    :cond_13
    :goto_b
    const-string v0, "height"

    .line 43
    :goto_c
    iget-object v3, v8, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    .line 45
    sget-object v23, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v23, v1

    const-string v1, ""

    move-object/from16 v24, v8

    const-string v8, "</span>"

    move-object/from16 v25, v8

    const/4 v8, 0x0

    if-nez v3, :cond_14

    .line 46
    new-instance v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    sget-object v15, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v3, v1, v15, v8}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    move-object/from16 v26, v1

    goto :goto_d

    .line 47
    :cond_14
    instance-of v8, v3, Landroid/text/Spanned;

    if-nez v8, :cond_15

    .line 48
    new-instance v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v15, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    move-object/from16 v26, v1

    const/4 v1, 0x0

    invoke-direct {v8, v3, v15, v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    move-object v3, v8

    :goto_d
    move-object/from16 v36, v0

    move-object/from16 v35, v6

    move-object/from16 v32, v7

    move-object/from16 v29, v9

    move-object/from16 v33, v12

    move-object/from16 v28, v13

    move-object/from16 v27, v14

    goto/16 :goto_20

    :cond_15
    move-object/from16 v26, v1

    .line 49
    check-cast v3, Landroid/text/Spanned;

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 51
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v27, v14

    const-class v14, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v28, v13

    const/4 v13, 0x0

    invoke-interface {v3, v13, v8, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/BackgroundColorSpan;

    array-length v13, v8

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v13, :cond_16

    aget-object v29, v8, v14

    .line 52
    invoke-virtual/range {v29 .. v29}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v29

    move-object/from16 v30, v8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v30

    goto :goto_e

    .line 53
    :cond_16
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 55
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v29, v1

    const/16 v1, 0xe

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bg_"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lkotlin/io/ExceptionsKt;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 57
    invoke-static {v13}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x0

    aput-object v13, v14, v30

    invoke-static {v9, v14}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 58
    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v29

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    .line 59
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 60
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v29, v9

    const-class v9, Ljava/lang/Object;

    invoke-interface {v3, v1, v14, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v9, v1

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v9, :cond_3d

    move/from16 v30, v9

    aget-object v9, v1, v14

    move-object/from16 v31, v1

    .line 61
    instance-of v1, v9, Landroid/text/style/StrikethroughSpan;

    if-eqz v1, :cond_18

    const-string v32, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v36, v0

    move-object/from16 v35, v6

    move-object/from16 v33, v12

    move/from16 v34, v15

    move-object/from16 v0, v32

    const/high16 v18, 0x42c80000    # 100.0f

    move-object/from16 v32, v7

    goto/16 :goto_19

    :cond_18
    move-object/from16 v32, v7

    .line 62
    instance-of v7, v9, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_19

    .line 63
    move-object v7, v9

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v33, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-static {v7}, Lkotlin/io/ExceptionsKt;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    const/16 v34, 0x0

    aput-object v7, v12, v34

    const-string v7, "<span style=\'color:%s;\'>"

    .line 65
    invoke-static {v7, v12}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_11
    const/high16 v18, 0x42c80000    # 100.0f

    goto/16 :goto_14

    :cond_19
    move-object/from16 v33, v12

    const/4 v7, 0x1

    .line 66
    instance-of v12, v9, Landroid/text/style/BackgroundColorSpan;

    if-eqz v12, :cond_1a

    .line 67
    move-object v12, v9

    check-cast v12, Landroid/text/style/BackgroundColorSpan;

    new-array v7, v7, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v12}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v34, 0x0

    aput-object v12, v7, v34

    const-string v12, "<span class=\'bg_%s\'>"

    invoke-static {v12, v7}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    .line 69
    :cond_1a
    instance-of v7, v9, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-eqz v7, :cond_1b

    const-string v7, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_11

    .line 70
    :cond_1b
    instance-of v7, v9, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_1d

    .line 71
    move-object v7, v9

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    .line 72
    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 73
    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    goto :goto_12

    .line 74
    :cond_1c
    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v15

    :goto_12
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 75
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v34, 0x0

    aput-object v7, v12, v34

    const-string v7, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v7, v12}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_1d
    const/4 v7, 0x1

    .line 76
    instance-of v12, v9, Landroid/text/style/RelativeSizeSpan;

    if-eqz v12, :cond_1e

    new-array v7, v7, [Ljava/lang/Object;

    .line 77
    move-object v12, v9

    check-cast v12, Landroid/text/style/RelativeSizeSpan;

    .line 78
    invoke-virtual {v12}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v12

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v12, v12, v18

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v34, 0x0

    aput-object v12, v7, v34

    const-string v12, "<span style=\'font-size:%.2f%%;\'>"

    .line 79
    invoke-static {v12, v7}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_14

    :cond_1e
    const/high16 v18, 0x42c80000    # 100.0f

    const/16 v34, 0x0

    .line 80
    instance-of v7, v9, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_20

    .line 81
    move-object v7, v9

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v34

    const-string v7, "<span style=\'font-family:\"%s\";\'>"

    .line 82
    invoke-static {v7, v12}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :cond_1f
    :goto_13
    move-object/from16 v36, v0

    move-object/from16 v35, v6

    move/from16 v34, v15

    goto/16 :goto_18

    :cond_20
    const/4 v7, 0x1

    .line 83
    instance-of v12, v9, Landroid/text/style/StyleSpan;

    if-eqz v12, :cond_24

    .line 84
    move-object v12, v9

    check-cast v12, Landroid/text/style/StyleSpan;

    invoke-virtual {v12}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v12

    if-eq v12, v7, :cond_23

    const/4 v7, 0x2

    if-eq v12, v7, :cond_22

    const/4 v7, 0x3

    if-eq v12, v7, :cond_21

    goto :goto_13

    :cond_21
    const-string v7, "<b><i>"

    goto :goto_14

    :cond_22
    const-string v7, "<i>"

    goto :goto_14

    :cond_23
    const-string v7, "<b>"

    goto :goto_14

    .line 85
    :cond_24
    instance-of v7, v9, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v7, :cond_28

    .line 86
    move-object v7, v9

    check-cast v7, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 87
    iget v7, v7, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    const/4 v12, -0x1

    if-eq v7, v12, :cond_27

    const/4 v12, 0x1

    if-eq v7, v12, :cond_26

    const/4 v12, 0x2

    if-eq v7, v12, :cond_25

    goto :goto_13

    :cond_25
    const-string v7, "<ruby style=\'ruby-position:under;\'>"

    goto :goto_14

    :cond_26
    const-string v7, "<ruby style=\'ruby-position:over;\'>"

    goto :goto_14

    :cond_27
    const-string v7, "<ruby style=\'ruby-position:unset;\'>"

    goto :goto_14

    .line 88
    :cond_28
    instance-of v7, v9, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_29

    const-string v7, "<u>"

    :goto_14
    move-object/from16 v36, v0

    move-object/from16 v35, v6

    move-object v0, v7

    move/from16 v34, v15

    goto/16 :goto_19

    .line 89
    :cond_29
    instance-of v7, v9, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v7, :cond_1f

    .line 90
    move-object v7, v9

    check-cast v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    .line 91
    iget v12, v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markShape:I

    move/from16 v34, v15

    iget v15, v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markFill:I

    move-object/from16 v35, v6

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v0

    const/4 v0, 0x1

    if-eq v15, v0, :cond_2b

    const/4 v0, 0x2

    if-eq v15, v0, :cond_2a

    goto :goto_15

    :cond_2a
    const-string v15, "open "

    .line 93
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_2b
    const/4 v0, 0x2

    const-string v15, "filled "

    .line 94
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    if-eqz v12, :cond_2f

    const/4 v15, 0x1

    if-eq v12, v15, :cond_2e

    if-eq v12, v0, :cond_2d

    const/4 v0, 0x3

    if-eq v12, v0, :cond_2c

    .line 95
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2c
    const-string/jumbo v0, "sesame"

    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2d
    const-string v0, "dot"

    .line 97
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2e
    const-string v0, "circle"

    .line 98
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2f
    const-string v0, "none"

    .line 99
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget v6, v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->position:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_30

    const-string v6, "over right"

    goto :goto_17

    :cond_30
    const-string/jumbo v6, "under left"

    :goto_17
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v7, v12

    const/4 v0, 0x1

    aput-object v6, v7, v0

    const-string v0, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 102
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :goto_18
    const/4 v0, 0x0

    :goto_19
    if-nez v1, :cond_39

    .line 103
    instance-of v1, v9, Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_39

    instance-of v1, v9, Landroid/text/style/BackgroundColorSpan;

    if-nez v1, :cond_39

    instance-of v1, v9, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-nez v1, :cond_39

    instance-of v1, v9, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v1, :cond_39

    instance-of v1, v9, Landroid/text/style/RelativeSizeSpan;

    if-nez v1, :cond_39

    instance-of v1, v9, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v1, :cond_31

    goto :goto_1b

    .line 104
    :cond_31
    instance-of v1, v9, Landroid/text/style/TypefaceSpan;

    if-eqz v1, :cond_32

    .line 105
    move-object v1, v9

    check-cast v1, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    goto :goto_1b

    .line 106
    :cond_32
    instance-of v1, v9, Landroid/text/style/StyleSpan;

    if-eqz v1, :cond_36

    .line 107
    move-object v1, v9

    check-cast v1, Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_35

    const/4 v6, 0x2

    if-eq v1, v6, :cond_34

    const/4 v6, 0x3

    if-eq v1, v6, :cond_33

    goto :goto_1a

    :cond_33
    const-string v1, "</i></b>"

    goto :goto_1c

    :cond_34
    const-string v1, "</i>"

    goto :goto_1c

    :cond_35
    const-string v1, "</b>"

    goto :goto_1c

    .line 108
    :cond_36
    instance-of v1, v9, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v1, :cond_37

    .line 109
    move-object v1, v9

    check-cast v1, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 110
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x10

    .line 111
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v6

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "<rt>"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</rt></ruby>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 113
    :cond_37
    instance-of v1, v9, Landroid/text/style/UnderlineSpan;

    if-eqz v1, :cond_38

    const-string v1, "</u>"

    goto :goto_1c

    :cond_38
    :goto_1a
    const/4 v1, 0x0

    goto :goto_1c

    :cond_39
    :goto_1b
    move-object/from16 v1, v25

    .line 114
    :goto_1c
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 115
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-eqz v0, :cond_3c

    .line 116
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v9, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-direct {v9, v6, v7, v0, v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_3a

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 120
    invoke-virtual {v13, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_3a
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_3b

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 125
    invoke-virtual {v13, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_3b
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v30

    move-object/from16 v1, v31

    move-object/from16 v7, v32

    move-object/from16 v12, v33

    move/from16 v15, v34

    move-object/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_10

    :cond_3d
    move-object/from16 v36, v0

    move-object/from16 v35, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v12

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 129
    :goto_1d
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_40

    .line 130
    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 131
    invoke-interface {v3, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 133
    iget-object v9, v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    .line 134
    sget-object v12, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1;

    invoke-static {v9, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    iget-object v9, v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 137
    iget-object v12, v12, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 138
    :cond_3e
    iget-object v9, v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    .line 139
    sget-object v12, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    invoke-static {v9, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v6, v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 142
    iget-object v9, v9, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    move v6, v7

    goto :goto_1d

    .line 143
    :cond_40
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v3, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v0, v8, v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    .line 145
    :goto_20
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_42

    .line 147
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_22

    :cond_41
    const/4 v1, 0x0

    goto :goto_23

    :cond_42
    :goto_22
    const/4 v1, 0x1

    .line 148
    :goto_23
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_21

    :cond_43
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const/4 v1, 0x1

    aput-object v20, v0, v1

    .line 150
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    aput-object v21, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v36, v0, v1

    const/4 v1, 0x6

    aput-object v35, v0, v1

    const/4 v1, 0x7

    aput-object v33, v0, v1

    const/16 v1, 0x8

    aput-object v32, v0, v1

    const/16 v1, 0x9

    aput-object v28, v0, v1

    const/16 v1, 0xa

    aput-object v27, v0, v1

    const/16 v1, 0xb

    .line 151
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xc

    .line 152
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xd

    move-object/from16 v8, v24

    .line 153
    iget v4, v8, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    cmpl-float v6, v4, v16

    if-eqz v6, :cond_46

    .line 154
    iget v6, v8, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_45

    if-ne v6, v9, :cond_44

    goto :goto_24

    :cond_44
    const-string/jumbo v6, "skewX"

    goto :goto_25

    :cond_45
    :goto_24
    const-string/jumbo v6, "skewY"

    :goto_25
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v7, v10

    .line 155
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v9

    const-string v4, "%s(%.2fdeg)"

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    :cond_46
    const/4 v9, 0x1

    move-object/from16 v4, v26

    :goto_26
    aput-object v4, v0, v1

    const-string v1, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    .line 156
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v0, v4

    const-string v6, "<span class=\'%s\'>"

    .line 158
    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, v8, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_47

    new-array v6, v9, [Ljava/lang/Object;

    .line 160
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "<span style=\'display:inline-block; text-align:%s;\'>"

    .line 161
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_47
    move-object/from16 v0, v25

    .line 165
    iget-object v3, v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    const v4, 0x3f99999a

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v22

    move-object/from16 v9, v29

    goto/16 :goto_1

    :cond_48
    const-string v0, "</div></body></html>"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><style>"

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_49
    const-string v2, "</style></head>"

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    .line 174
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->webView:Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/html"

    const-string v3, "base64"

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
