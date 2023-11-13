.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;
.super Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.source "Atlasxxxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x466

    const/16 v3, 0x1fa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x2ec

    const/16 v10, 0xe8

    const/16 v3, 0x38c

    const/16 v11, 0x188

    invoke-direct {v4, v2, v10, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/16 v13, 0xa0

    invoke-direct {v6, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v3, "btn_bg_standard"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x391

    const/16 v3, 0x431

    invoke-direct {v4, v2, v10, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v3, "btn_bg_tap"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x2c3

    const/16 v4, 0x3a4

    const/16 v6, 0xe3

    invoke-direct {v5, v3, v2, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v3, 0xe1

    invoke-direct {v7, v12, v12, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v4, "btn_focus_ring_select"

    const/4 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x1cc

    invoke-direct {v5, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v3, 0x1ca

    invoke-direct {v7, v12, v12, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v4, "focus_10"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v13, 0x1d1

    const/16 v4, 0x2be

    const/16 v5, 0xec

    invoke-direct {v6, v13, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0xef

    const/16 v5, 0xee

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    const/16 v4, 0xf0

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v5, "hold_steady_ring"

    const/4 v7, 0x1

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v5, 0x387

    const/16 v15, 0x18d

    const/16 v6, 0x3df

    const/16 v8, 0x1de

    invoke-direct {v7, v5, v15, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v11, 0xa

    const/16 v5, 0x5c

    const/16 v6, 0x5b

    invoke-direct {v9, v3, v11, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    const/16 v3, 0x60

    invoke-direct {v10, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v6, "ic_camera_select"

    const/16 v16, 0x1

    move-object v5, v14

    move-object/from16 v17, v8

    move/from16 v8, v16

    move v4, v11

    move-object/from16 v11, v17

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v5, 0x21a

    const/16 v11, 0x1ae

    const/16 v6, 0x254

    const/16 v8, 0x1f8

    invoke-direct {v7, v5, v11, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v10, 0x4d

    const/16 v8, 0x55

    invoke-direct {v9, v5, v6, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v17, "ic_delete"

    const/16 v18, 0x1

    move-object/from16 v19, v5

    move-object v5, v14

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    move v13, v8

    move/from16 v8, v18

    move v2, v10

    move-object/from16 v10, v20

    move v4, v11

    move-object/from16 v11, v19

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v5, 0x259

    const/16 v6, 0x2a2

    const/16 v8, 0x1e6

    invoke-direct {v7, v5, v4, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v5, 0xc

    const/16 v6, 0x15

    invoke-direct {v9, v5, v6, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v6, "ic_done"

    const/4 v8, 0x1

    move-object v5, v14

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x32d

    const/16 v9, 0x382

    const/16 v10, 0x1e2

    invoke-direct {v7, v8, v15, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v22, "ic_focus_lock"

    const/16 v24, 0x0

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v7, 0x9

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v6, 0x436

    const/16 v7, 0xe7

    const/16 v9, 0x464

    const/16 v10, 0x121

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x1f

    const/16 v7, 0x13

    invoke-direct {v10, v6, v7, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_play"

    const/4 v9, 0x1

    move-object v6, v14

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v3, 0x3a9

    const/16 v6, 0x434

    const/16 v7, 0xe2

    const/4 v9, 0x2

    invoke-direct {v8, v3, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x9b

    const/16 v6, 0x70

    const/16 v7, 0x126

    const/16 v9, 0x150

    invoke-direct {v10, v3, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    const/16 v3, 0x1c0

    invoke-direct {v11, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_rotate_device"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v6, 0xf1

    const/16 v7, 0x2e7

    const/16 v9, 0x1a9

    const/16 v10, 0x1d1

    invoke-direct {v8, v10, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x84

    const/16 v7, 0x16b

    const/16 v9, 0x13c

    invoke-direct {v10, v13, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_rotate_device_arrows"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v3, 0x2a7

    const/16 v6, 0x2e5

    const/16 v7, 0x1ec

    invoke-direct {v8, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x43

    const/4 v6, 0x5

    invoke-direct {v10, v6, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    const/16 v13, 0x48

    invoke-direct {v11, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_suggestion_lens"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xd

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v6, 0x3e4

    const/16 v7, 0x418

    const/16 v9, 0x1cb

    invoke-direct {v8, v6, v15, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v6, 0x7

    const/16 v7, 0x3b

    const/4 v9, 0x5

    invoke-direct {v10, v6, v9, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_suggestion_lowlight"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xe

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v6, 0x215

    const/16 v7, 0x1f2

    const/16 v9, 0x1d1

    invoke-direct {v8, v9, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x46

    const/16 v7, 0x46

    const/4 v9, 0x2

    invoke-direct {v10, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_suggestion_macro"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0xf

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v6, 0x2ea

    const/16 v7, 0x328

    const/16 v9, 0x1e6

    invoke-direct {v8, v6, v4, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v4, 0x3d

    const/4 v6, 0x5

    invoke-direct {v10, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_suggestion_photo"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v3, 0x41d

    const/16 v4, 0x455

    const/16 v6, 0x1c5

    invoke-direct {v8, v3, v15, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-direct {v10, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v7, "ic_suggestion_portrait"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
