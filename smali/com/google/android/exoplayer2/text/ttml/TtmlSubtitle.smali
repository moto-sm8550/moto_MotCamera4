.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field public final eventTimesUs:[J

.field public final globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final regionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 8
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 9
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 10
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    iget-object v7, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iget-object v9, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v11, p1

    invoke-virtual {v6, v11, v12, v0, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 4
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 5
    iget-object v4, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, v6

    move-wide/from16 v1, p1

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 6
    iget-object v5, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v3, v7

    move-object v4, v8

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 9
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 11
    array-length v5, v4

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 12
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v31, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    move-object/from16 v17, v16

    const v25, -0x800001

    const/high16 v24, -0x80000000

    const/16 v28, 0x0

    const/high16 v29, -0x1000000

    .line 14
    iget v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    move/from16 v22, v3

    const/16 v23, 0x0

    .line 15
    iget v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    move/from16 v19, v3

    const/16 v20, 0x0

    .line 16
    iget v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    move/from16 v21, v3

    .line 17
    iget v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    move/from16 v26, v3

    .line 18
    iget v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->height:F

    move/from16 v27, v3

    .line 19
    iget v2, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    move/from16 v30, v2

    .line 20
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue;

    move-object v14, v2

    invoke-direct/range {v14 .. v31}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 26
    iget-object v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    check-cast v5, Landroid/text/SpannableStringBuilder;

    .line 29
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    invoke-virtual {v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    .line 30
    array-length v7, v6

    move v9, v3

    :goto_2
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 31
    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const-string v12, ""

    invoke-virtual {v5, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move v6, v3

    .line 32
    :goto_3
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v9, 0x20

    if-ge v6, v7, :cond_5

    .line 33
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_4

    add-int/lit8 v7, v6, 0x1

    move v10, v7

    .line 34
    :goto_4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v10, v7

    if-lez v10, :cond_4

    add-int/2addr v10, v6

    .line 35
    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_6

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_6

    .line 37
    invoke-virtual {v5, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v6, v3

    .line 38
    :goto_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    const/16 v11, 0xa

    if-ge v6, v10, :cond_8

    .line 39
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_7

    add-int/lit8 v11, v6, 0x2

    .line 40
    invoke-virtual {v5, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 41
    :cond_8
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_9

    .line 42
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v6, v3

    .line 43
    :goto_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ge v6, v10, :cond_b

    .line 44
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_a

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_a

    .line 45
    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 46
    :cond_b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_c

    .line 47
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 48
    :cond_c
    iget v5, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    iget v6, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    .line 49
    iput v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 50
    iput v6, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 51
    iget v5, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    .line 52
    iput v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 53
    iget v5, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 54
    iput v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 55
    iget v5, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 56
    iput v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 57
    iget v5, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSize:F

    iget v6, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSizeType:I

    .line 58
    iput v5, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 59
    iput v6, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 60
    iget v4, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    .line 61
    iput v4, v2, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 62
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v0
.end method

.method public final getEventTime(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p0, p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZ)I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
