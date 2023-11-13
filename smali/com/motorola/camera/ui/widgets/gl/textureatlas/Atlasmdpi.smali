.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;
.super Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.source "Atlasmdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x144

    const/16 v3, 0x7d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v10, 0xbb

    const/16 v11, 0x37

    const/16 v12, 0xe3

    const/16 v2, 0x5f

    invoke-direct {v4, v10, v11, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v14, 0x28

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

    const/16 v3, 0x102

    const/16 v4, 0x41

    const/16 v6, 0x12a

    const/16 v7, 0x69

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

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

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x7a

    const/16 v7, 0x43

    const/16 v8, 0xb2

    const/16 v9, 0x7b

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x38

    invoke-direct {v7, v13, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "btn_focus_ring_select"

    const/16 v17, 0x0

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x75

    const/16 v8, 0x75

    invoke-direct {v5, v3, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x73

    invoke-direct {v7, v13, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "focus_10"

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xb6

    const/16 v9, 0x3e

    invoke-direct {v7, v6, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x3c

    invoke-direct {v6, v13, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    move-object v14, v4

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xb7

    const/16 v9, 0x64

    const/16 v14, 0xcf

    const/16 v15, 0x7b

    invoke-direct {v6, v7, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v9, 0x18

    invoke-direct {v7, v13, v2, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_camera_select"

    const/16 v17, 0x1

    move-object/from16 v20, v14

    move-object v14, v4

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x132

    const/16 v14, 0x142

    const/16 v15, 0x16

    invoke-direct {v6, v7, v3, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/16 v2, 0x14

    invoke-direct {v14, v5, v3, v2, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move-object/from16 v18, v14

    move-object v14, v4

    move v8, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v19, v12

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x7

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v10, 0xe8

    const/16 v12, 0x51

    const/16 v14, 0xfc

    const/16 v15, 0x61

    invoke-direct {v6, v10, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v3, v5, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object v14, v4

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v18, v12

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0xfd

    const/16 v12, 0x4c

    invoke-direct {v6, v10, v11, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v11, 0x15

    invoke-direct {v8, v13, v13, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_focus_lock"

    const/16 v17, 0x0

    move-object v14, v4

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v12

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x30

    const/16 v11, 0x13f

    const/16 v12, 0x40

    invoke-direct {v6, v7, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x7

    invoke-direct {v8, v11, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_play"

    const/16 v17, 0x1

    move-object v14, v4

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x108

    const/16 v8, 0x12d

    const/16 v9, 0x3c

    invoke-direct {v5, v6, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x26

    const/16 v9, 0x1b

    const/16 v11, 0x4b

    const/16 v12, 0x55

    invoke-direct {v6, v8, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x70

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_rotate_device"

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x103

    const/16 v8, 0x32

    const/16 v11, 0xbb

    invoke-direct {v5, v11, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v6, 0x20

    const/16 v8, 0x5c

    const/16 v11, 0x50

    invoke-direct {v3, v2, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_rotate_device_arrows"

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x66

    const/16 v5, 0xfa

    const/16 v6, 0x78

    invoke-direct {v3, v10, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x12

    invoke-direct {v4, v13, v13, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lens"

    const/16 v17, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xd4

    const/16 v6, 0x64

    const/16 v8, 0x76

    const/16 v9, 0xe3

    invoke-direct {v3, v4, v6, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x10

    const/4 v8, 0x1

    invoke-direct {v4, v8, v13, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lowlight"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x12f

    const/16 v8, 0x45

    const/16 v9, 0x141

    const/16 v10, 0x57

    invoke-direct {v3, v4, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v13, v13, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_macro"

    const/16 v17, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x12f

    const/16 v8, 0x5c

    const/16 v9, 0x141

    const/16 v10, 0x6c

    invoke-direct {v3, v4, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v15, "ic_suggestion_photo"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v3, 0x1b

    const/16 v4, 0x142

    const/16 v6, 0x2b

    invoke-direct {v10, v7, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-direct {v12, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v9, "ic_suggestion_portrait"

    const/4 v11, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
