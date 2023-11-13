.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field public static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;


# instance fields
.field public final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field public final totalCodewords:I

.field public final versionNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void
.end method

.method public varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 3
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 p1, 0x0

    .line 4
    aget-object v0, p2, p1

    .line 5
    iget v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 6
    aget-object p2, p2, p1

    .line 7
    iget-object p2, p2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 8
    array-length v1, p2

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v3, p2, p1

    .line 9
    iget v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 10
    iget v3, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    add-int/2addr v3, v0

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput v2, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method public static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 16

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x4

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x13

    invoke-direct {v7, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x7

    invoke-direct {v4, v7, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x10

    invoke-direct {v10, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v6, v9

    const/16 v10, 0xa

    invoke-direct {v4, v10, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xd

    invoke-direct {v12, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v6, v9

    invoke-direct {v4, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v12, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x9

    invoke-direct {v14, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v12, v9

    const/16 v14, 0x11

    invoke-direct {v4, v14, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/4 v12, 0x3

    aput-object v4, v3, v12

    invoke-direct {v1, v5, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v15, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x22

    invoke-direct {v7, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v15, v9

    invoke-direct {v4, v10, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x1c

    invoke-direct {v8, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    invoke-direct {v4, v11, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x16

    invoke-direct {v8, v5, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    invoke-direct {v4, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v6, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x37

    invoke-direct {v8, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    const/16 v8, 0xf

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2c

    invoke-direct {v15, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v7, v9

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v15, v6, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v7, v9

    const/16 v15, 0x12

    invoke-direct {v4, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v14, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v7, v9

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v12, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x50

    invoke-direct {v14, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v7, v9

    const/16 v13, 0x14

    invoke-direct {v4, v13, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x20

    invoke-direct {v14, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v7, v9

    invoke-direct {v4, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x18

    invoke-direct {v13, v6, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v7, v9

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x9

    invoke-direct {v13, v2, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v7, v9

    invoke-direct {v4, v11, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x6c

    invoke-direct {v10, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x2b

    invoke-direct {v10, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xf

    invoke-direct {v10, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xb

    invoke-direct {v10, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xc

    invoke-direct {v10, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x44

    invoke-direct {v13, v6, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v10, v9

    invoke-direct {v7, v15, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v3, v9

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x1b

    invoke-direct {v10, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v7, v11, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v3, v5

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    invoke-direct {v10, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v7, v14, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v3, v6

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xf

    invoke-direct {v10, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    const/16 v10, 0x1c

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v3, v12

    const/4 v7, 0x6

    invoke-direct {v1, v7, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x4e

    invoke-direct {v13, v6, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v10, v9

    const/16 v4, 0x14

    invoke-direct {v8, v4, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v8, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x1f

    invoke-direct {v10, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v4, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xe

    invoke-direct {v10, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v5

    invoke-direct {v4, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xd

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v5

    const/16 v10, 0x1a

    invoke-direct {v4, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/4 v4, 0x7

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x61

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    invoke-direct {v4, v14, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x26

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x27

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v8, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v2, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v8, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x13

    invoke-direct {v11, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v8, v5

    invoke-direct {v4, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xf

    invoke-direct {v8, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x8

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x74

    invoke-direct {v8, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x24

    invoke-direct {v10, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x25

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x10

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x14

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xd

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x9

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x44

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x45

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2b

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v10, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x1a

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x6

    const/16 v15, 0x13

    invoke-direct {v10, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x14

    invoke-direct {v10, v6, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xf

    invoke-direct {v10, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x10

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x1c

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0xa

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x51

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    const/16 v10, 0x14

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x32

    invoke-direct {v10, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x33

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x16

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x1c

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xc

    invoke-direct {v10, v12, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x8

    const/16 v11, 0xd

    invoke-direct {v10, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0xb

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x5c

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x5d

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x24

    const/4 v15, 0x6

    invoke-direct {v10, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x25

    invoke-direct {v10, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x14

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/4 v15, 0x6

    invoke-direct {v10, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x1a

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x1c

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0xc

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    const/16 v10, 0x1a

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v15, 0x25

    invoke-direct {v10, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x26

    invoke-direct {v10, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v15, 0x14

    invoke-direct {v10, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    const/16 v15, 0xb

    invoke-direct {v10, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    const/16 v10, 0x16

    invoke-direct {v4, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0xd

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    invoke-direct {v10, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v10, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x28

    invoke-direct {v10, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    const/4 v15, 0x5

    invoke-direct {v10, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x10

    const/16 v11, 0xb

    invoke-direct {v10, v11, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x11

    invoke-direct {v8, v15, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x14

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xc

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xd

    invoke-direct {v8, v15, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v13, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x57

    const/4 v11, 0x5

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x58

    invoke-direct {v8, v5, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x16

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x29

    const/4 v11, 0x5

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2a

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x19

    const/4 v11, 0x7

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xc

    const/16 v10, 0xb

    invoke-direct {v8, v10, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xd

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0xf

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v13

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x62

    const/4 v11, 0x5

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x63

    invoke-direct {v8, v5, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2d

    const/4 v11, 0x7

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2e

    invoke-direct {v8, v12, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v15, 0xf

    invoke-direct {v8, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x14

    invoke-direct {v8, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    invoke-direct {v4, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v12, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xd

    const/16 v14, 0x10

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v14, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6c

    const/4 v14, 0x5

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xa

    invoke-direct {v11, v14, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2f

    invoke-direct {v11, v5, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x16

    invoke-direct {v11, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    const/16 v15, 0x17

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x11

    invoke-direct {v11, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v15, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x78

    const/4 v14, 0x5

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x79

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x9

    const/16 v14, 0x2b

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    const/16 v14, 0x16

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x12

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x71

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x72

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    const/16 v14, 0xb

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x15

    const/16 v15, 0x11

    invoke-direct {v11, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x16

    invoke-direct {v11, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x9

    const/16 v15, 0xd

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    invoke-direct {v11, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x13

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6c

    const/4 v14, 0x5

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v14, 0xd

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    const/16 v14, 0xf

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x5

    const/16 v15, 0x19

    invoke-direct {v8, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v14, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v14, 0x10

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x14

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v14, 0x11

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x16

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x6

    const/16 v14, 0x17

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    const/16 v15, 0x10

    invoke-direct {v8, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x15

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6f

    invoke-direct {v8, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x70

    const/4 v14, 0x7

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v11, v14, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v14, 0x10

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x22

    const/16 v14, 0xd

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    const/16 v8, 0x18

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x16

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x79

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/4 v14, 0x5

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    const/16 v15, 0x10

    invoke-direct {v11, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x17

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    const/4 v14, 0x6

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    const/4 v14, 0x6

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v13, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v14, 0x10

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v8, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v11, v6, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x18

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v14, 0x6a

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v14, 0x2f

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v14, 0xd

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v14, 0x16

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    const/16 v15, 0x10

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x19

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x72

    const/16 v14, 0xa

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    invoke-direct {v8, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    invoke-direct {v11, v14, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2f

    invoke-direct {v11, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x16

    invoke-direct {v11, v8, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x6

    const/16 v15, 0x17

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x21

    const/16 v14, 0x10

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v14, 0x7a

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7b

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    const/16 v14, 0x16

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v12, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v14, 0x17

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1a

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xc

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    const/16 v15, 0x1c

    invoke-direct {v11, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x1b

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    const/16 v14, 0xa

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1f

    const/16 v14, 0x19

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xb

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1f

    const/16 v15, 0x10

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    const/4 v14, 0x7

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/16 v14, 0x2d

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x25

    const/16 v14, 0x18

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1a

    const/16 v15, 0x10

    invoke-direct {v11, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x1d

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/4 v14, 0x5

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    const/16 v14, 0xa

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    const/16 v15, 0x13

    invoke-direct {v8, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    const/16 v14, 0xf

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v8, v11, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    invoke-direct {v15, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v7, v9

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    invoke-direct {v13, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    invoke-direct {v1, v8, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/16 v13, 0xd

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    const/16 v14, 0xf

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x10

    const/16 v14, 0x1c

    invoke-direct {v11, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x1f

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x73

    const/16 v14, 0x11

    invoke-direct {v11, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    const/16 v14, 0x2f

    invoke-direct {v8, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x23

    const/16 v13, 0x19

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    const/16 v14, 0xf

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x23

    const/16 v14, 0x10

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x20

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/16 v13, 0x11

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v8, v5, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/16 v13, 0x2f

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v13, 0x19

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xb

    const/16 v14, 0xf

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x10

    invoke-direct {v11, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x21

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/16 v13, 0xd

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    const/4 v13, 0x6

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v13, 0x2f

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v13, 0x19

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x3b

    const/16 v14, 0x10

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x11

    invoke-direct {v11, v5, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x22

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    const/16 v13, 0x79

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/4 v13, 0x7

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    const/16 v13, 0x2f

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v13, 0x1a

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x27

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    const/16 v13, 0x19

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x16

    const/16 v14, 0xf

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x29

    const/16 v14, 0x10

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x23

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x79

    const/4 v13, 0x6

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/16 v14, 0xe

    invoke-direct {v8, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x22

    const/16 v13, 0x30

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v13, 0x19

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xf

    invoke-direct {v11, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x40

    const/16 v14, 0x10

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x24

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/16 v13, 0x11

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7b

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    const/16 v13, 0xe

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x31

    const/16 v13, 0x18

    invoke-direct {v8, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v14, 0x19

    invoke-direct {v8, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v9

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x10

    invoke-direct {v11, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x25

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    invoke-direct {v8, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7b

    const/16 v13, 0x12

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xd

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x20

    const/16 v11, 0x2f

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x30

    const/16 v11, 0x18

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xe

    const/16 v11, 0x19

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2a

    const/16 v11, 0xf

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x20

    const/16 v11, 0x10

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x26

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x75

    const/16 v11, 0x14

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x76

    invoke-direct {v8, v2, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x28

    const/16 v11, 0x2f

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x30

    const/4 v11, 0x7

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2b

    const/16 v11, 0x18

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v9

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x19

    const/16 v11, 0x16

    invoke-direct {v8, v11, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v7, v5

    const/16 v8, 0x1e

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v7, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v13, 0xf

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v9

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x43

    const/16 v13, 0x10

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v7, v5

    invoke-direct {v4, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v4, v3, v12

    const/16 v4, 0x27

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v2, v2, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v4, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x76

    const/16 v10, 0x13

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v9

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x77

    const/4 v10, 0x6

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v5

    const/16 v7, 0x1e

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v4, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x12

    const/16 v10, 0x2f

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v9

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x1f

    const/16 v10, 0x30

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v5

    const/16 v7, 0x1c

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v4, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x22

    const/16 v10, 0x18

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v9

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x19

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v7, v4, v5

    const/16 v7, 0x1e

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v4, v6, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x14

    const/16 v10, 0xf

    invoke-direct {v6, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x3d

    const/16 v9, 0x10

    invoke-direct {v6, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v6, v4, v5

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v2, v12

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x28

    if-gt p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
