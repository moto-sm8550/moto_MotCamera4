.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field public static final L_AND_G_PATTERNS:[[I

.field public static final L_PATTERNS:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xa

    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 1
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v6, 0x6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v6, 0x7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v6, 0x8

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    const/16 v2, 0x14

    new-array v3, v2, [[I

    .line 2
    sput-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 3
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v2, :cond_1

    .line 4
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v3, v0, -0xa

    aget-object v1, v1, v3

    .line 5
    array-length v3, v1

    new-array v3, v3, [I

    move v6, v4

    .line 6
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 7
    array-length v7, v1

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    aget v7, v1, v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8
    :cond_0
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method
