.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;
.super Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.source "Atlasxxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x27a

    const/16 v3, 0x1ed

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0xd9

    const/16 v10, 0x15f

    const/16 v3, 0x151

    const/16 v5, 0x1d7

    invoke-direct {v4, v2, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v12, 0x78

    invoke-direct {v6, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v3, "btn_bg_standard"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x156

    const/16 v14, 0x166

    const/16 v4, 0x1ce

    const/16 v6, 0x1de

    invoke-direct {v5, v3, v14, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v4, "btn_bg_tap"

    const/4 v6, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xb8

    const/16 v7, 0x208

    const/16 v8, 0x161

    invoke-direct {v5, v10, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xa9

    invoke-direct {v7, v11, v11, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "btn_focus_ring_select"

    const/16 v18, 0x0

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x15a

    const/16 v9, 0x15a

    invoke-direct {v7, v3, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x158

    invoke-direct {v8, v11, v11, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "focus_10"

    move-object v15, v4

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x212

    const/16 v9, 0xb3

    invoke-direct {v7, v10, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0xb4

    const/16 v12, 0xb3

    invoke-direct {v8, v2, v3, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    const/16 v18, 0x1

    move-object v15, v4

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x5

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x200

    const/16 v12, 0x1ac

    const/16 v13, 0x243

    const/16 v15, 0x1e9

    invoke-direct {v8, v9, v12, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x7

    const/16 v13, 0x46

    const/16 v15, 0x44

    invoke-direct {v9, v5, v12, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    const/16 v13, 0x48

    invoke-direct {v12, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_camera_select"

    move-object/from16 v21, v15

    move-object v15, v4

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v8, 0x6

    invoke-virtual {v1, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x1d3

    const/16 v12, 0x1ff

    const/16 v15, 0x19e

    invoke-direct {v8, v9, v14, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v14, 0xe

    const/16 v15, 0x8

    const/16 v2, 0x3a

    const/16 v7, 0x40

    invoke-direct {v12, v14, v15, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move v3, v15

    move-object v15, v4

    move-object/from16 v17, v8

    move-object/from16 v19, v12

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x217

    const/16 v9, 0x6c

    const/16 v12, 0x24f

    const/16 v15, 0x97

    invoke-direct {v5, v8, v9, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v12, 0xf

    invoke-direct {v9, v3, v12, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object/from16 v21, v15

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x204

    const/16 v9, 0x167

    const/16 v12, 0x244

    const/16 v15, 0x1a7

    invoke-direct {v4, v5, v9, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_focus_lock"

    const/16 v18, 0x0

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x3b

    const/16 v7, 0x23a

    const/16 v9, 0x67

    invoke-direct {v4, v8, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x17

    invoke-direct {v5, v7, v14, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_play"

    const/16 v18, 0x1

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x20d

    const/16 v5, 0x276

    const/16 v7, 0x162

    invoke-direct {v3, v4, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x74

    const/16 v6, 0x53

    const/16 v7, 0xdd

    const/16 v9, 0xfd

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0x150

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_rotate_device"

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd4

    const/16 v5, 0x1eb

    const/4 v7, 0x2

    invoke-direct {v3, v7, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x3f

    const/16 v7, 0x62

    const/16 v9, 0x111

    const/16 v10, 0xee

    invoke-direct {v4, v5, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_rotate_device_arrows"

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x248

    const/16 v5, 0x1ac

    const/16 v6, 0x278

    const/16 v7, 0x1dc

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x33

    const/4 v6, 0x3

    invoke-direct {v4, v6, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x36

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_suggestion_lens"

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x1a3

    const/16 v6, 0x1fb

    const/16 v9, 0x1d3

    invoke-direct {v3, v9, v4, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x2d

    const/4 v9, 0x5

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_suggestion_lowlight"

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v11, Landroid/graphics/Rect;

    const/16 v3, 0x24b

    const/4 v4, 0x2

    invoke-direct {v11, v8, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/16 v3, 0x35

    const/16 v4, 0x35

    const/4 v6, 0x1

    invoke-direct {v13, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v10, "ic_suggestion_macro"

    const/4 v12, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x23f

    const/16 v4, 0x3b

    const/16 v6, 0x26f

    const/16 v8, 0x66

    invoke-direct {v10, v3, v4, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v3, 0x2e

    const/4 v4, 0x3

    invoke-direct {v12, v4, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v9, "ic_suggestion_photo"

    const/4 v11, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x249

    const/16 v4, 0x167

    const/16 v5, 0x275

    const/16 v6, 0x193

    invoke-direct {v10, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v3, 0x31

    const/16 v4, 0x31

    const/4 v5, 0x5

    invoke-direct {v12, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v9, "ic_suggestion_portrait"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
