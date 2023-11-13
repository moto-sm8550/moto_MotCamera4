.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "TextureAtlasComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;
    }
.end annotation


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

.field public mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    return-void
.end method


# virtual methods
.method public final getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public final getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;
    .locals 8

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;-><init>()V

    goto/16 :goto_7

    .line 2
    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_1

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;-><init>()V

    goto/16 :goto_7

    .line 3
    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_2

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>()V

    goto/16 :goto_7

    .line 4
    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_3

    goto/16 :goto_5

    .line 5
    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_e

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_4

    goto/16 :goto_4

    .line 6
    :cond_4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_d

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_5

    goto/16 :goto_3

    .line 7
    :cond_5
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_b

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_b

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_7

    goto :goto_1

    .line 9
    :cond_7
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_a

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_9

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;-><init>()V

    goto :goto_7

    .line 11
    :cond_9
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_7

    .line 12
    :cond_a
    :goto_0
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;-><init>()V

    .line 13
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    .line 14
    :cond_b
    :goto_1
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;-><init>()V

    goto :goto_7

    .line 15
    :cond_c
    :goto_2
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;-><init>()V

    .line 16
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    .line 17
    :cond_d
    :goto_3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_6

    .line 18
    :cond_e
    :goto_4
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_7

    .line 19
    :cond_f
    :goto_5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>()V

    :goto_6
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 20
    :goto_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;-><init>()V

    .line 21
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    .line 22
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string p0, "Unable to load atlas for DPI "

    const-string v2, "TextureAtlasComponent"

    .line 23
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "textureatlas/drawable_atlas_texture_%s.webp"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 24
    :try_start_0
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_10

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    if-eqz v3, :cond_12

    .line 28
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_11

    .line 29
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_12
    :goto_9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlas:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final declared-synchronized getSpriteData(I)Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;-><init>()V

    .line 5
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mSourceSize:Landroid/graphics/Point;

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mSpriteSize:Landroid/graphics/Rect;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getVerticeData(I)[F

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mVerticeData:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Sprite not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextureAtlasComponent"

    return-object p0
.end method

.method public final getVerticeData(I)[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 5
    :goto_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    const/16 v0, 0x14

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x3

    const/16 v0, 0xd

    .line 7
    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v1, v0

    aput v2, v1, p1

    const/4 p1, 0x4

    const/16 v0, 0x9

    .line 8
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v1, v0

    aput v2, v1, p1

    const/16 p1, 0x8

    const/16 v0, 0x12

    .line 9
    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v1, v0

    aput v2, v1, p1

    const/16 p1, 0xe

    const/16 v0, 0x13

    .line 10
    iget p0, p0, Landroid/graphics/RectF;->top:F

    aput p0, v1, v0

    aput p0, v1, p1

    return-object v1
.end method

.method public final loadTextures()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    move-result-object v0

    .line 4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlas:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    move-result-object v0

    .line 7
    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 8
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const v3, 0x84c2

    .line 10
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    .line 11
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/16 v4, 0xde1

    .line 12
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    .line 13
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlas:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(Landroid/graphics/Bitmap;)V

    const/4 p0, -0x1

    if-eq v3, p0, :cond_1

    .line 14
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    .line 15
    :cond_1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    const-string p0, "Atlas image loaded dur:"

    .line 16
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextureAtlasComponent"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final unloadTextures()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    .line 5
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    :cond_0
    return-void
.end method
