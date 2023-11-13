.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;
.super Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.source "Atlashdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14a

    const/16 v3, 0xfd

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v10, 0x10c

    const/16 v11, 0x61

    const/16 v12, 0x148

    const/16 v2, 0x9d

    invoke-direct {v4, v10, v11, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v14, 0x3c

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

    const/16 v3, 0xa2

    const/16 v4, 0xde

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

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v15, 0xb3

    const/16 v4, 0x107

    const/16 v5, 0xb5

    invoke-direct {v6, v15, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0x54

    invoke-direct {v8, v13, v13, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v5, "btn_focus_ring_select"

    const/4 v7, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v11, 0xae

    invoke-direct {v7, v3, v3, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v5, 0xac

    invoke-direct {v9, v13, v13, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v6, "focus_10"

    const/16 v16, 0x0

    move-object v5, v14

    move-object/from16 v17, v8

    move/from16 v8, v16

    move v12, v11

    move-object/from16 v11, v17

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v5, 0x10d

    const/16 v6, 0x5c

    invoke-direct {v7, v15, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v5, 0x5a

    invoke-direct {v9, v13, v13, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v6, "hold_steady_ring"

    const/4 v8, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v5, 0x71

    const/16 v6, 0x93

    const/16 v8, 0xd3

    invoke-direct {v7, v5, v15, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v5, 0x23

    const/16 v6, 0x23

    invoke-direct {v9, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    const/16 v11, 0x24

    invoke-direct {v10, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v6, "ic_camera_select"

    const/16 v17, 0x1

    move-object v5, v14

    move-object/from16 v18, v8

    move/from16 v8, v17

    move v2, v11

    move-object/from16 v11, v18

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x96

    const/16 v9, 0xd8

    const/16 v10, 0xf6

    invoke-direct {v7, v8, v9, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x1e

    const/16 v10, 0x21

    invoke-direct {v8, v5, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_delete"

    const/16 v21, 0x1

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v4

    move-object/from16 v24, v10

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xb2

    const/16 v8, 0xba

    const/16 v10, 0xcf

    const/16 v11, 0xd1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/16 v12, 0x21

    invoke-direct {v7, v10, v11, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_done"

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x71

    const/16 v10, 0xd8

    const/16 v11, 0x91

    const/16 v12, 0xf8

    invoke-direct {v6, v7, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0x20

    invoke-direct {v7, v13, v13, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_focus_lock"

    const/16 v21, 0x0

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v11

    move-object/from16 v24, v10

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xf4

    const/16 v10, 0x107

    const/16 v11, 0xd2

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0xb

    invoke-direct {v7, v10, v5, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_play"

    const/16 v21, 0x1

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v5

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x112

    const/16 v6, 0x58

    const/16 v7, 0x148

    invoke-direct {v4, v5, v3, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x39

    const/16 v7, 0x29

    const/16 v9, 0x6f

    const/16 v10, 0x7f

    invoke-direct {v5, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0xa8

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_rotate_device"

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x6c

    const/16 v6, 0xfb

    invoke-direct {v4, v3, v15, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x1f

    const/16 v9, 0x30

    const/16 v10, 0x89

    const/16 v11, 0x78

    invoke-direct {v5, v6, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_rotate_device_arrows"

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xd6

    const/16 v6, 0xcc

    const/16 v7, 0xef

    invoke-direct {v4, v15, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x1a

    const/4 v9, 0x1

    invoke-direct {v5, v9, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    const/16 v10, 0x1b

    invoke-direct {v9, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_suggestion_lens"

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x98

    const/16 v9, 0xad

    const/16 v11, 0xcc

    invoke-direct {v4, v5, v15, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0x17

    const/4 v11, 0x1

    invoke-direct {v5, v3, v11, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_suggestion_lowlight"

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xd4

    const/16 v9, 0xd5

    invoke-direct {v4, v5, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_suggestion_macro"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xd1

    const/16 v8, 0xda

    const/16 v9, 0xea

    const/16 v11, 0xf1

    invoke-direct {v4, v5, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x18

    const/4 v9, 0x1

    invoke-direct {v5, v9, v9, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v19, "ic_suggestion_photo"

    const/16 v21, 0x1

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v4, 0xda

    const/16 v5, 0x106

    const/16 v6, 0xf1

    invoke-direct {v13, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-direct {v15, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mSize:Landroid/graphics/Point;

    const-string v12, "ic_suggestion_portrait"

    const/4 v14, 0x1

    move-object v11, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
