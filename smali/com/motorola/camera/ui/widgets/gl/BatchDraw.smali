.class public final Lcom/motorola/camera/ui/widgets/gl/BatchDraw;
.super Ljava/lang/Object;
.source "BatchDraw.java"


# instance fields
.field public mDrawList:Ljava/lang/Object;

.field public mFilteredBatch:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized batchDraw([F[F)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    .line 4
    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v7, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v4, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length p2, p2

    if-ge v2, p2, :cond_4

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 p2, 0x0

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_5
    monitor-exit p0

    return-void

    .line 11
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clearDrawList()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move v1, v0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDrawList()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDrawList(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    .line 2
    array-length p1, p1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
