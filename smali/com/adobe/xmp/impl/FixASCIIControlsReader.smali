.class public final Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;


# instance fields
.field public control:I

.field public digits:I

.field public state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    return-void
.end method


# virtual methods
.method public final read([CII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p2

    move v6, v2

    move v7, v6

    :goto_0
    move v5, v3

    :cond_0
    :goto_1
    if-eqz v5, :cond_13

    move/from16 v8, p3

    if-ge v6, v8, :cond_13

    invoke-super {v0, v1, v7, v3}, Ljava/io/PushbackReader;->read([CII)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    const/4 v9, 0x5

    if-eqz v5, :cond_12

    aget-char v10, v1, v7

    .line 1
    iget v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-eqz v11, :cond_e

    const/4 v12, 0x2

    if-eq v11, v3, :cond_d

    const/16 v14, 0x39

    const/16 v15, 0x30

    const/4 v3, 0x3

    const/4 v13, 0x4

    if-eq v11, v12, :cond_b

    const/16 v12, 0x3b

    if-eq v11, v3, :cond_6

    if-eq v11, v13, :cond_3

    if-eq v11, v9, :cond_2

    goto/16 :goto_6

    :cond_2
    iput v2, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_6

    :cond_3
    if-gt v15, v10, :cond_4

    if-gt v10, v14, :cond_4

    iget v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v11, 0xa

    mul-int/2addr v3, v11

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    add-int/2addr v11, v3

    iput v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v3, v9, :cond_5

    :goto_3
    iput v13, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_6

    :cond_4
    if-ne v10, v12, :cond_5

    iget v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v3, v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iput v9, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_6

    :cond_6
    if-gt v15, v10, :cond_7

    if-le v10, v14, :cond_9

    :cond_7
    const/16 v11, 0x61

    if-gt v11, v10, :cond_8

    const/16 v11, 0x66

    if-le v10, v11, :cond_9

    :cond_8
    const/16 v11, 0x41

    if-gt v11, v10, :cond_a

    const/16 v11, 0x46

    if-gt v10, v11, :cond_a

    :cond_9
    iget v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v12, 0x10

    mul-int/2addr v11, v12

    invoke-static {v10, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v11, v13, :cond_5

    :goto_4
    iput v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_6

    :cond_a
    if-ne v10, v12, :cond_5

    iget v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v3, v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    iput v2, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iget v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v10, v3

    goto :goto_6

    :cond_b
    const/16 v11, 0x78

    if-ne v10, v11, :cond_c

    iput v2, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v2, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    goto :goto_4

    :cond_c
    if-gt v15, v10, :cond_5

    if-gt v10, v14, :cond_5

    const/16 v3, 0xa

    invoke-static {v10, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    iput v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/4 v3, 0x1

    iput v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    goto :goto_3

    :cond_d
    const/16 v3, 0x23

    if-ne v10, v3, :cond_5

    iput v12, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_6

    :cond_e
    const/16 v3, 0x26

    if-ne v10, v3, :cond_f

    const/4 v3, 0x1

    iput v3, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x1

    .line 2
    :goto_7
    iget v11, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v11, :cond_11

    invoke-static {v10}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v10, 0x20

    :cond_10
    add-int/lit8 v7, v4, 0x1

    aput-char v10, p1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_8

    :cond_11
    add-int/lit8 v7, v7, 0x1

    if-ne v11, v9, :cond_0

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/PushbackReader;->unread([CII)V

    :goto_8
    move v7, v2

    goto/16 :goto_1

    :cond_12
    if-lez v7, :cond_0

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/PushbackReader;->unread([CII)V

    iput v9, v0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    move v7, v2

    goto/16 :goto_0

    :cond_13
    if-gtz v6, :cond_15

    if-eqz v5, :cond_14

    goto :goto_9

    :cond_14
    const/4 v6, -0x1

    :cond_15
    :goto_9
    return v6
.end method
