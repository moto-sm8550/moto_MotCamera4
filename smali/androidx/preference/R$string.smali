.class public final Landroidx/preference/R$string;
.super Ljava/lang/Object;


# direct methods
.method public static compositeARGBWithAlpha(II)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 2
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {v0, p1, p0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isColorLight(I)Z
    .locals 21

    if-eqz p0, :cond_5

    .line 1
    sget-object v2, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x3

    if-nez v3, :cond_0

    new-array v3, v4, [D

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 4
    array-length v7, v3

    if-ne v7, v4, :cond_4

    int-to-double v7, v2

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v7, v9

    const-wide v11, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v2, v7, v11

    const-wide v13, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v17, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v0, 0x4003333333333333L    # 2.4

    if-gez v2, :cond_1

    div-double/2addr v7, v13

    goto :goto_0

    :cond_1
    add-double/2addr v7, v15

    div-double v7, v7, v17

    .line 5
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    :goto_0
    int-to-double v4, v5

    div-double/2addr v4, v9

    cmpg-double v2, v4, v11

    if-gez v2, :cond_2

    div-double/2addr v4, v13

    goto :goto_1

    :cond_2
    add-double/2addr v4, v15

    div-double v4, v4, v17

    .line 6
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    :goto_1
    move-wide/from16 v19, v4

    int-to-double v4, v6

    div-double/2addr v4, v9

    cmpg-double v2, v4, v11

    if-gez v2, :cond_3

    div-double/2addr v4, v13

    goto :goto_2

    :cond_3
    add-double/2addr v4, v15

    div-double v4, v4, v17

    .line 7
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    :goto_2
    move-wide v0, v4

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v4, v7

    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v9, v9, v19

    add-double/2addr v9, v4

    const-wide v4, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v4, v0

    add-double/2addr v4, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v9

    const/4 v2, 0x0

    .line 8
    aput-wide v4, v3, v2

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v4, v7

    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v11, v11, v19

    add-double/2addr v11, v4

    const-wide v4, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v4, v0

    add-double/2addr v4, v11

    mul-double/2addr v4, v9

    const/4 v6, 0x1

    .line 9
    aput-wide v4, v3, v6

    const/4 v5, 0x2

    const-wide v11, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v7, v11

    const-wide v11, 0x3fbe83e425aee632L    # 0.1192

    mul-double v19, v19, v11

    add-double v19, v19, v7

    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v0, v6

    add-double v0, v0, v19

    mul-double/2addr v0, v9

    .line 10
    aput-wide v0, v3, v5

    const/4 v0, 0x1

    .line 11
    aget-wide v3, v3, v0

    div-double/2addr v3, v9

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_6

    goto :goto_3

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    move v0, v2

    :goto_3
    return v0
.end method

.method public static layer(IIF)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 3
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method
