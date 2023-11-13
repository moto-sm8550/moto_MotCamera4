.class public final Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;
.super Ljava/lang/Object;
.source "SubtitleViewUtils.java"


# direct methods
.method public static removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V
    .locals 6

    const v0, -0x800001

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 4
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    .line 5
    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/text/Spannable;

    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 12
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 13
    instance-of v5, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    .line 14
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static resolveTextSize(IFII)F
    .locals 2

    const v0, -0x800001

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_3

    const/4 p3, 0x1

    if-eq p0, p3, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    return v0

    :cond_1
    return p1

    :cond_2
    int-to-float p0, p2

    :goto_0
    mul-float/2addr p1, p0

    return p1

    :cond_3
    int-to-float p0, p3

    goto :goto_0
.end method
