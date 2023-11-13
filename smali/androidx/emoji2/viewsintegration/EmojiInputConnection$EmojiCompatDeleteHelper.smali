.class public final Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;
.super Ljava/lang/Object;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiCompatDeleteHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 6

    .line 1
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    if-ltz p3, :cond_1c

    if-gez p4, :cond_1

    goto/16 :goto_b

    .line 2
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 3
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v2, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, p0

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v0

    :goto_1
    if-eqz v4, :cond_4

    goto/16 :goto_b

    :cond_4
    if-eqz p5, :cond_19

    .line 4
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ltz v1, :cond_e

    if-ge p5, v1, :cond_5

    goto :goto_4

    :cond_5
    if-gez p3, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    move p5, p0

    :goto_3
    if-nez p3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_9

    if-eqz p5, :cond_8

    goto :goto_4

    :cond_8
    move v1, p0

    goto :goto_5

    .line 6
    :cond_9
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz p5, :cond_b

    .line 7
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p5

    if-nez p5, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 8
    :cond_b
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_c

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 9
    :cond_c
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p5

    if-eqz p5, :cond_d

    goto :goto_4

    :cond_d
    move p5, v0

    goto :goto_3

    :cond_e
    :goto_4
    move v1, v3

    .line 10
    :goto_5
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v2, :cond_17

    if-ge p4, v2, :cond_f

    goto :goto_8

    :cond_f
    if-gez p3, :cond_10

    goto :goto_8

    :cond_10
    :goto_6
    move p5, p0

    :goto_7
    if-nez p3, :cond_11

    move p4, v2

    goto :goto_9

    :cond_11
    if-lt v2, p4, :cond_12

    if-eqz p5, :cond_18

    goto :goto_8

    .line 12
    :cond_12
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz p5, :cond_14

    .line 13
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p5

    if-nez p5, :cond_13

    goto :goto_8

    :cond_13
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 14
    :cond_14
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_15

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 15
    :cond_15
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p5

    if-eqz p5, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v2, v2, 0x1

    move p5, v0

    goto :goto_7

    :cond_17
    :goto_8
    move p4, v3

    :cond_18
    :goto_9
    if-eq v1, v3, :cond_1c

    if-ne p4, v3, :cond_1a

    goto :goto_b

    :cond_19
    sub-int/2addr v1, p3

    .line 16
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p4

    .line 17
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 18
    :cond_1a
    const-class p3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p2, v1, p4, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz p3, :cond_1c

    .line 19
    array-length p5, p3

    if-lez p5, :cond_1c

    .line 20
    array-length p5, p3

    move v2, p0

    :goto_a
    if-ge v2, p5, :cond_1b

    .line 21
    aget-object v3, p3, v2

    .line 22
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 23
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 24
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 26
    :cond_1b
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 27
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 28
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 29
    invoke-interface {p2, p0, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 30
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move p0, v0

    :cond_1c
    :goto_b
    return p0
.end method
