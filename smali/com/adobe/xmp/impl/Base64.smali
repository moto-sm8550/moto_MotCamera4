.class public final Lcom/adobe/xmp/impl/Base64;
.super Ljava/lang/Object;


# static fields
.field public static ascii:[B

.field public static base64:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/xmp/impl/Base64;->base64:[B

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->base64:[B

    array-length v2, v0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aget-byte v0, v0, v1

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x9

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method
