.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field public colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek$enumunboxing$()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 4
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 7
    :cond_3
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 9
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v5, v2, [F

    .line 10
    new-array v2, v2, [I

    move v6, v4

    move v7, v6

    move v8, v7

    .line 11
    :goto_2
    iget v9, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    const-wide v11, 0x406fe00000000000L    # 255.0

    if-ge v6, v9, :cond_9

    .line 12
    div-int/lit8 v9, v6, 0x4

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    .line 14
    rem-int/lit8 v15, v6, 0x4

    if-eqz v15, :cond_8

    if-eq v15, v3, :cond_7

    if-eq v15, v10, :cond_6

    const/4 v10, 0x3

    if-eq v15, v10, :cond_5

    goto :goto_3

    :cond_5
    mul-double/2addr v13, v11

    double-to-int v10, v13

    const/16 v11, 0xff

    .line 15
    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v2, v9

    goto :goto_3

    :cond_6
    mul-double/2addr v13, v11

    double-to-int v8, v13

    goto :goto_3

    :cond_7
    mul-double/2addr v13, v11

    double-to-int v7, v13

    goto :goto_3

    :cond_8
    double-to-float v10, v13

    .line 16
    aput v10, v5, v9

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_9
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v0, v5, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v9, :cond_a

    goto/16 :goto_9

    .line 19
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/2addr v2, v10

    .line 20
    new-array v5, v2, [D

    .line 21
    new-array v6, v2, [D

    move v7, v4

    .line 22
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_c

    .line 23
    rem-int/lit8 v8, v9, 0x2

    if-nez v8, :cond_b

    .line 24
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v13, v8

    aput-wide v13, v5, v7

    goto :goto_5

    .line 25
    :cond_b
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v13, v8

    aput-wide v13, v6, v7

    add-int/lit8 v7, v7, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 26
    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v7, v1

    if-ge v4, v7, :cond_f

    .line 27
    aget v1, v1, v4

    .line 28
    iget-object v7, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 29
    aget v7, v7, v4

    float-to-double v7, v7

    move v9, v3

    :goto_7
    if-ge v9, v2, :cond_e

    add-int/lit8 v10, v9, -0x1

    .line 30
    aget-wide v13, v5, v10

    .line 31
    aget-wide v15, v5, v9

    .line 32
    aget-wide v17, v5, v9

    cmpl-double v17, v17, v7

    if-ltz v17, :cond_d

    sub-double/2addr v7, v13

    sub-double/2addr v15, v13

    div-double/2addr v7, v15

    const-wide/16 v13, 0x0

    move v15, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 33
    sget-object v16, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 34
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 35
    aget-wide v7, v6, v10

    aget-wide v9, v6, v9

    sub-double/2addr v9, v7

    mul-double/2addr v9, v3

    add-double/2addr v9, v7

    mul-double/2addr v9, v11

    double-to-int v3, v9

    goto :goto_8

    :cond_d
    move v15, v4

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    move v15, v4

    add-int/lit8 v3, v2, -0x1

    .line 36
    aget-wide v3, v6, v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    .line 37
    :goto_8
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 38
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 39
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 40
    invoke-static {v3, v4, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 41
    iget-object v3, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 42
    aput v1, v3, v15

    add-int/lit8 v4, v15, 0x1

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    :goto_9
    return-object v0
.end method
