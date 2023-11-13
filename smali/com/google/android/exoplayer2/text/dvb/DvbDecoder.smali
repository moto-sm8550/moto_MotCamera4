.class public final Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# instance fields
.field public final parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3
    array-length v1, p1

    .line 4
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 5
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    return-void
.end method


# virtual methods
.method public final decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 45

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    .line 2
    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 5
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 7
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8
    iput-object v1, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 9
    iput-object v1, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 10
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 12
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-lt v4, v5, :cond_c

    const/16 v4, 0x8

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v10, 0xf

    if-ne v5, v10, :cond_c

    .line 14
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 15
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/16 v11, 0x10

    .line 16
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 17
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 18
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v14

    add-int/2addr v14, v13

    mul-int/lit8 v15, v13, 0x8

    .line 19
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-le v15, v1, :cond_1

    const-string v1, "DvbParser"

    const-string v4, "Data field length exceeds limit"

    .line 20
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_6

    :cond_1
    const/4 v1, 0x4

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 22
    :pswitch_0
    iget v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v4, :cond_b

    .line 23
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 25
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 26
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 27
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 29
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 30
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 31
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    move/from16 v20, v1

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v19, v9

    goto :goto_1

    :cond_2
    move/from16 v20, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 32
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    .line 33
    iput-object v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_5

    .line 34
    :pswitch_1
    iget v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_3

    .line 35
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    .line 36
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 37
    :cond_3
    iget v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v12, v1, :cond_b

    .line 38
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    .line 39
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 40
    :pswitch_2
    iget v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_4

    .line 41
    invoke-static {v3, v13}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    .line 42
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 43
    :cond_4
    iget v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v12, v1, :cond_b

    .line 44
    invoke-static {v3, v13}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    .line 45
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 46
    :pswitch_3
    iget-object v10, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 47
    iget v15, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v15, :cond_b

    if-eqz v10, :cond_b

    .line 48
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 49
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 50
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 51
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 52
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 53
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 54
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 55
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 56
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 57
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 58
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 59
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v24

    .line 60
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 61
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, -0xa

    .line 62
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    if-lez v13, :cond_7

    .line 63
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 64
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 65
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    const/16 v11, 0xc

    .line 66
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 67
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 68
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/lit8 v13, v13, -0x6

    if-eq v9, v8, :cond_5

    if-ne v9, v6, :cond_6

    :cond_5
    const/16 v9, 0x8

    .line 69
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 70
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    add-int/lit8 v13, v13, -0x2

    .line 71
    :cond_6
    new-instance v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    invoke-direct {v9, v4, v11}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(II)V

    invoke-virtual {v7, v15, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x8

    const/16 v11, 0x10

    goto :goto_2

    .line 72
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-object/from16 v16, v1

    move/from16 v17, v12

    move-object/from16 v26, v7

    invoke-direct/range {v16 .. v26}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    .line 73
    iget v4, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v4, :cond_8

    .line 74
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    if-eqz v4, :cond_8

    .line 75
    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v9, 0x0

    .line 76
    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v9, v6, :cond_8

    .line 77
    iget-object v6, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 78
    :cond_8
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 79
    :pswitch_4
    iget v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v4, :cond_b

    .line 80
    iget-object v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    const/16 v7, 0x8

    .line 81
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 82
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 83
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 84
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, -0x2

    .line 85
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    :goto_4
    if-lez v13, :cond_9

    .line 86
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 87
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v10, 0x10

    .line 88
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 89
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    add-int/lit8 v13, v13, -0x6

    .line 90
    new-instance v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v15, v11, v12}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v6, v9, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 91
    :cond_9
    new-instance v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {v7, v1, v8, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IILandroid/util/SparseArray;)V

    if-eqz v8, :cond_a

    .line 92
    iput-object v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 93
    iget-object v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 94
    iget-object v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 95
    iget-object v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 96
    iget v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v4, v1, :cond_b

    .line 97
    iput-object v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 98
    :cond_b
    :goto_5
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v1

    sub-int/2addr v14, v1

    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    :goto_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 99
    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v3, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-nez v3, :cond_d

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v2

    goto/16 :goto_10

    .line 101
    :cond_d
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v1, :cond_e

    goto :goto_7

    .line 102
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 103
    :goto_7
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/2addr v5, v8

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v5, v4, :cond_f

    iget v4, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/2addr v4, v8

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_10

    .line 106
    :cond_f
    iget v4, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/2addr v4, v8

    iget v5, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/2addr v5, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    invoke-static {v4, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 108
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v3, v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 111
    :goto_8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_1b

    .line 112
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 114
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 115
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v11, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 116
    iget v11, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v12, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v11, v12

    .line 117
    iget v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v12, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v9, v12

    .line 118
    iget v12, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v12, v11

    iget v13, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 119
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 120
    iget v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v13, v9

    iget v14, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 121
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 122
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v14, v11, v9, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 123
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-nez v12, :cond_11

    .line 124
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-nez v12, :cond_11

    .line 125
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 126
    :cond_11
    iget-object v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v14, 0x0

    .line 127
    :goto_9
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_17

    .line 128
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 129
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 130
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    if-nez v6, :cond_12

    .line 131
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    :cond_12
    if-eqz v6, :cond_16

    .line 132
    iget-boolean v15, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    goto :goto_a

    :cond_13
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 133
    :goto_a
    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v23, v3

    iget v3, v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v3, v11

    iget v8, v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int/2addr v8, v9

    move-object/from16 v24, v13

    iget-object v13, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v25, v2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_14

    .line 134
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    :goto_b
    move/from16 v26, v5

    goto :goto_c

    :cond_14
    const/4 v2, 0x2

    if-ne v7, v2, :cond_15

    .line 135
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_b

    .line 136
    :cond_15
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    goto :goto_b

    .line 137
    :goto_c
    iget-object v5, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v19, v3

    move/from16 v20, v8

    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-static/range {v16 .. v22}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 138
    iget-object v5, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    const/4 v6, 0x1

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v22}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_d

    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v23, v3

    move/from16 v26, v5

    move-object/from16 v24, v13

    const/4 v6, 0x1

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move v8, v6

    move-object/from16 v3, v23

    move-object/from16 v13, v24

    move-object/from16 v2, v25

    move/from16 v5, v26

    const/4 v6, 0x2

    const/4 v7, 0x3

    goto/16 :goto_9

    :cond_17
    move-object/from16 v25, v2

    move-object/from16 v23, v3

    move/from16 v26, v5

    move v6, v8

    .line 139
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v2, :cond_1a

    .line 140
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 141
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v5, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v5

    const/4 v5, 0x2

    goto :goto_e

    :cond_18
    const/4 v5, 0x2

    if-ne v2, v5, :cond_19

    .line 142
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v7

    goto :goto_e

    .line 143
    :cond_19
    iget-object v2, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v7

    .line 144
    :goto_e
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v7, v11

    int-to-float v8, v9

    iget v12, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    iget v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v13, v9

    int-to-float v13, v13

    iget-object v14, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_1a
    const/4 v3, 0x3

    const/4 v5, 0x2

    :goto_f
    const/16 v44, 0x0

    const/16 v29, 0x0

    move-object/from16 v28, v29

    move-object/from16 v30, v29

    const v38, -0x800001

    const/high16 v37, -0x80000000

    move/from16 v43, v37

    const/16 v41, 0x0

    const/high16 v42, -0x1000000

    .line 146
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v8, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    .line 147
    invoke-static {v2, v11, v9, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v31

    int-to-float v2, v11

    .line 148
    iget v7, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v7, v7

    div-float v35, v2, v7

    const/16 v36, 0x0

    int-to-float v2, v9

    .line 149
    iget v8, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v8, v8

    div-float v32, v2, v8

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 150
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v2, v2

    div-float v39, v2, v7

    .line 151
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v2, v2

    div-float v40, v2, v8

    .line 152
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v44}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    .line 153
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v26, 0x1

    move v7, v3

    move v8, v6

    move-object/from16 v3, v23

    move v6, v5

    move v5, v2

    move-object/from16 v2, v25

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v25, v2

    .line 156
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v25

    .line 157
    :goto_10
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
