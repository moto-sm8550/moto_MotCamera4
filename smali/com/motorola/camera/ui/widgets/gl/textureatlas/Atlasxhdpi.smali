.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;
.super Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.source "Atlasxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xea

    const/16 v3, 0x261

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v10, 0x93

    const/16 v11, 0xec

    const/16 v12, 0xe3

    const/16 v2, 0x13c

    invoke-direct {v4, v10, v11, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v14, 0x50

    invoke-direct {v6, v13, v13, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v3, "btn_bg_standard"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x141

    const/16 v4, 0x191

    invoke-direct {v5, v10, v3, v12, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v13, v13, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v4, "btn_bg_tap"

    const/4 v6, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0x4e

    const/16 v14, 0x1cb

    const/16 v5, 0xbf

    const/16 v7, 0x23c

    invoke-direct {v6, v4, v14, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0x71

    invoke-direct {v8, v13, v13, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v5, "btn_focus_ring_select"

    const/4 v7, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xe7

    const/16 v8, 0xe7

    invoke-direct {v6, v3, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xe5

    invoke-direct {v7, v13, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "focus_10"

    const/16 v18, 0x0

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x14f

    const/16 v8, 0x7a

    const/16 v9, 0x1c6

    invoke-direct {v6, v3, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x78

    invoke-direct {v7, v13, v2, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    const/16 v18, 0x1

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xaf

    const/16 v9, 0x196

    const/16 v10, 0xdd

    const/16 v12, 0x1c0

    invoke-direct {v7, v8, v9, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x4

    const/16 v10, 0x2f

    const/16 v12, 0x2e

    invoke-direct {v8, v2, v9, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Point;

    const/16 v9, 0x30

    invoke-direct {v2, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_camera_select"

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v21, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xc4

    const/16 v8, 0x213

    const/16 v10, 0xe2

    const/16 v12, 0x239

    invoke-direct {v5, v7, v8, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x9

    const/16 v12, 0x27

    const/16 v15, 0x2b

    invoke-direct {v8, v10, v6, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move v11, v15

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x242

    const/16 v7, 0x28

    const/16 v8, 0x25f

    invoke-direct {v4, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object v15, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x7f

    const/16 v6, 0x196

    const/16 v7, 0xaa

    const/16 v15, 0x1c1

    invoke-direct {v4, v5, v6, v7, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_focus_lock"

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x75

    const/16 v6, 0x241

    const/16 v7, 0x8d

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v10, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_play"

    const/16 v18, 0x1

    move-object v15, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x49

    const/16 v6, 0x23d

    invoke-direct {v4, v3, v14, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x4d

    const/16 v7, 0x37

    const/16 v9, 0x94

    const/16 v10, 0xa9

    invoke-direct {v5, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0xe0

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_rotate_device"

    move-object v15, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x8e

    const/16 v6, 0x14a

    const/16 v9, 0xec

    invoke-direct {v4, v3, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x2a

    const/16 v9, 0x41

    const/16 v10, 0xb6

    const/16 v11, 0x9f

    invoke-direct {v5, v6, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_rotate_device_arrows"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1ee

    const/16 v6, 0xe4

    const/16 v7, 0x20e

    const/16 v9, 0xc4

    invoke-direct {v4, v9, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x22

    invoke-direct {v5, v3, v3, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v9, 0x24

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lens"

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x23e

    const/16 v7, 0xdf

    const/16 v10, 0x25e

    const/16 v11, 0xc4

    invoke-direct {v4, v11, v5, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x1e

    const/4 v10, 0x3

    invoke-direct {v5, v10, v3, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lowlight"

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1c5

    const/16 v7, 0xe8

    const/16 v10, 0x1e9

    const/16 v11, 0xc4

    invoke-direct {v4, v11, v5, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_macro"

    const/16 v17, 0x0

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v12, Landroid/graphics/Rect;

    const/16 v4, 0x2d

    const/16 v5, 0x242

    const/16 v7, 0x4d

    invoke-direct {v12, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/16 v4, 0x1f

    invoke-direct {v14, v3, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v11, "ic_suggestion_photo"

    const/4 v13, 0x1

    move-object v10, v2

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v12, Landroid/graphics/Rect;

    const/16 v3, 0x52

    const/16 v4, 0x241

    const/16 v5, 0x70

    invoke-direct {v12, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/16 v3, 0x21

    const/16 v4, 0x21

    const/4 v5, 0x3

    invoke-direct {v14, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v11, "ic_suggestion_portrait"

    move-object v10, v2

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
