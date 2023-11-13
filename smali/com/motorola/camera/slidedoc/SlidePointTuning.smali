.class public final Lcom/motorola/camera/slidedoc/SlidePointTuning;
.super Ljava/lang/Object;
.source "SlidePointTuning.java"


# instance fields
.field public failCount:I

.field public lastUpdateTime:J

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mUpdateInterval:I

.field public final pointsFlow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/slidedoc/TimePoints;",
            ">;"
        }
    .end annotation
.end field

.field public showingPoints:[Landroid/graphics/Point;

.field public smoothPoints:[Landroid/graphics/Point;

.field public successCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    .line 9
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    .line 10
    aget v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    return-void
.end method


# virtual methods
.method public final angleIntersection(FF)F
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x42b40000    # 90.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    rem-float/2addr p0, p1

    sub-float p0, p1, p0

    :cond_0
    return p0
.end method

.method public final clearOverTimePoints(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/slidedoc/TimePoints;

    .line 4
    iget-wide v3, v3, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long v3, p1, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_2

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/slidedoc/TimePoints;

    .line 11
    iget-wide v0, v0, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public final getShowingPoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 4
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 6
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0

    .line 9
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public final getSmoothPoints(J)[Landroid/graphics/Point;
    .locals 11

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->clearOverTimePoints(J)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    iget p2, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    const/16 v0, 0x32

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    if-ge p1, v2, :cond_1

    :cond_0
    if-lez p2, :cond_8

    const/4 p2, 0x5

    if-lt p1, p2, :cond_8

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    const/4 v4, 0x4

    if-nez p2, :cond_2

    new-array p2, v4, [Landroid/graphics/Point;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    move p2, v3

    :goto_0
    if-ge p2, v4, :cond_3

    .line 6
    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    aput-object v6, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_1
    if-ge p2, v4, :cond_3

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v6, v5, p2

    iput v3, v6, Landroid/graphics/Point;->x:I

    .line 8
    aget-object v5, v5, p2

    iput v3, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v3

    .line 9
    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_5

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/slidedoc/TimePoints;

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    move v6, v3

    :goto_3
    if-ge v6, v4, :cond_4

    .line 12
    iget-object v7, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v8, v7, v6

    iget v9, v8, Landroid/graphics/Point;->x:I

    aget-object v10, v5, v6

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 13
    aget-object v7, v7, v6

    iget v8, v7, Landroid/graphics/Point;->y:I

    aget-object v9, v5, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_4
    if-ge p2, v4, :cond_6

    .line 14
    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v6, v5, p2

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v7, p1

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 15
    aget-object v5, v5, p2

    iget v6, v5, Landroid/graphics/Point;->y:I

    div-int/2addr v6, p1

    iput v6, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 16
    :cond_6
    iget p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    .line 17
    iput v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    if-le p1, v1, :cond_7

    .line 18
    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    .line 19
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    return-object p0

    .line 20
    :cond_8
    iget p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    if-lez p1, :cond_9

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    :cond_9
    iput v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    .line 23
    iget p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    if-le p1, v1, :cond_a

    .line 24
    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onZoomEnd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SlidePointTuning"

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw v0
.end method

.method public final parallelFourEdge([Landroid/graphics/Point;)Z
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    aget-object v2, p1, v1

    const/4 v3, 0x1

    .line 2
    aget-object v4, p1, v3

    const/4 v5, 0x2

    .line 3
    aget-object v5, p1, v5

    const/4 v6, 0x3

    .line 4
    aget-object v6, p1, v6

    .line 5
    new-instance v7, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v7, v2, v6}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 6
    new-instance v8, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v8, v4, v5}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7
    new-instance v9, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v9, v2, v4}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 8
    new-instance v10, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v10, v6, v5}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 9
    invoke-virtual {v7, v8}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v11

    .line 10
    invoke-virtual {v9, v10}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    cmpl-double v17, v11, v15

    if-gtz v17, :cond_0

    cmpl-double v15, v13, v15

    if-lez v15, :cond_18

    :cond_0
    sub-double v15, v11, v13

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 12
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    cmpl-double v19, v17, v19

    if-gtz v19, :cond_19

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    cmpl-double v21, v17, v19

    if-lez v21, :cond_1

    cmpl-double v21, v15, v19

    if-lez v21, :cond_1

    goto/16 :goto_2

    :cond_1
    cmpg-double v1, v17, v19

    if-gez v1, :cond_18

    cmpl-double v1, v15, v19

    if-lez v1, :cond_18

    .line 13
    invoke-virtual {v9, v7}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v15

    .line 14
    invoke-virtual {v9, v8}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v17

    .line 15
    invoke-virtual {v10, v7}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v19

    .line 16
    invoke-virtual {v10, v8}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v21

    cmpg-double v1, v11, v13

    if-gez v1, :cond_d

    .line 17
    iget v1, v2, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v23, v4

    int-to-double v3, v1

    .line 18
    iget v1, v6, Landroid/graphics/Point;->y:I

    iget v14, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v11, v1

    sub-double v13, v3, v11

    .line 19
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    cmpg-double v1, v13, v24

    if-ltz v1, :cond_c

    .line 20
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    cmpl-double v1, v3, v24

    if-gtz v1, :cond_c

    .line 21
    iget v1, v7, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    .line 22
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v1

    const/high16 v4, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_c

    .line 23
    iget v1, v8, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    .line 24
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    goto/16 :goto_0

    .line 25
    :cond_2
    iget-wide v0, v9, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v3, v10, Lcom/motorola/camera/slidedoc/Edge;->length:D

    sub-double/2addr v0, v3

    sub-double v15, v15, v17

    .line 26
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v3, v3, v9

    if-lez v3, :cond_7

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 27
    :cond_3
    iget-wide v0, v7, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v3, v8, Lcom/motorola/camera/slidedoc/Edge;->length:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_5

    .line 28
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 29
    iget v1, v7, Lcom/motorola/camera/slidedoc/Edge;->height:I

    sub-int/2addr v0, v1

    move-object/from16 v3, v23

    .line 30
    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 31
    iget v1, v6, Landroid/graphics/Point;->y:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_4

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 32
    :cond_4
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->x(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    .line 33
    :cond_5
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 34
    iget v1, v8, Lcom/motorola/camera/slidedoc/Edge;->height:I

    sub-int/2addr v0, v1

    .line 35
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 36
    iget v1, v5, Landroid/graphics/Point;->y:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_6

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 37
    :cond_6
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-virtual {v7, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->x(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v3, v23

    neg-double v0, v0

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v9

    if-gez v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 38
    :cond_8
    iget-wide v0, v7, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v9, v8, Lcom/motorola/camera/slidedoc/Edge;->length:D

    cmpl-double v0, v0, v9

    if-lez v0, :cond_a

    .line 39
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 40
    iget v1, v7, Lcom/motorola/camera/slidedoc/Edge;->height:I

    add-int/2addr v0, v1

    .line 41
    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 42
    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_9

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 43
    :cond_9
    iget v0, v5, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->x(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    .line 44
    :cond_a
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 45
    iget v1, v8, Lcom/motorola/camera/slidedoc/Edge;->height:I

    add-int/2addr v0, v1

    .line 46
    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 47
    iget v1, v2, Landroid/graphics/Point;->y:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_b

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 48
    :cond_b
    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-virtual {v7, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->x(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_c
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_d
    move-object v3, v4

    .line 49
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v11, v1

    .line 50
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-wide/from16 v26, v15

    int-to-double v14, v1

    sub-double v28, v11, v14

    .line 51
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    cmpg-double v1, v28, v24

    if-ltz v1, :cond_18

    .line 52
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    cmpl-double v1, v11, v24

    if-gtz v1, :cond_18

    .line 53
    iget v1, v9, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v1

    const/high16 v11, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v11

    if-gtz v1, :cond_18

    .line 55
    iget v1, v10, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    .line 56
    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_e

    goto/16 :goto_1

    .line 57
    :cond_e
    iget-wide v0, v7, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v7, v8, Lcom/motorola/camera/slidedoc/Edge;->length:D

    sub-double/2addr v0, v7

    sub-double v15, v26, v19

    .line 58
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double v17, v17, v21

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v4, v7, v11

    if-lez v4, :cond_13

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v7

    if-gez v0, :cond_f

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_f
    iget-wide v0, v9, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v7, v10, Lcom/motorola/camera/slidedoc/Edge;->length:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_11

    .line 60
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 61
    iget v1, v9, Lcom/motorola/camera/slidedoc/Edge;->width:I

    sub-int/2addr v0, v1

    .line 62
    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 63
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_10

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Point;->x:I

    .line 64
    :cond_10
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    invoke-virtual {v10, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->y(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 65
    :cond_11
    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 66
    iget v1, v10, Lcom/motorola/camera/slidedoc/Edge;->width:I

    sub-int/2addr v0, v1

    .line 67
    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 68
    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-le v1, v3, :cond_12

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 69
    :cond_12
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->y(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_13
    neg-double v0, v0

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v7

    if-gez v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 70
    :cond_14
    iget-wide v0, v9, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v7, v10, Lcom/motorola/camera/slidedoc/Edge;->length:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_16

    .line 71
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 72
    iget v1, v9, Lcom/motorola/camera/slidedoc/Edge;->width:I

    add-int/2addr v0, v1

    .line 73
    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 74
    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 75
    :cond_15
    iget v0, v5, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    invoke-virtual {v10, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->y(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 76
    :cond_16
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 77
    iget v1, v10, Lcom/motorola/camera/slidedoc/Edge;->width:I

    add-int/2addr v0, v1

    .line 78
    iput v0, v3, Landroid/graphics/Point;->x:I

    .line 79
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->x:I

    if-le v1, v4, :cond_17

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    .line 80
    :cond_17
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/motorola/camera/slidedoc/Edge;->y(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    :cond_18
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_19
    :goto_2
    return v1
.end method

.method public final smoothRectPoints([Landroid/graphics/Point;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/slidedoc/TimePoints;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 5
    aget-object v5, v0, v4

    aget-object v6, p1, v4

    if-eqz v5, :cond_1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v7, 0x14

    .line 6
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v7, :cond_1

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v7, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_2

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 10
    rem-int/2addr v1, v5

    .line 11
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v4, v3, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-double v4, v2

    .line 12
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    int-to-double v1, v2

    .line 13
    aget-object v6, p1, v0

    aget-object v7, v3, v0

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-double v7, v7

    add-double/2addr v7, v4

    double-to-int v4, v7

    iput v4, v6, Landroid/graphics/Point;->x:I

    .line 14
    aget-object v4, p1, v0

    aget-object v0, v3, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    add-double/2addr v5, v1

    double-to-int v0, v5

    iput v0, v4, Landroid/graphics/Point;->y:I

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    new-instance v1, Lcom/motorola/camera/slidedoc/TimePoints;

    invoke-direct {v1, p2, p3, p1}, Lcom/motorola/camera/slidedoc/TimePoints;-><init>(J[Landroid/graphics/Point;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->clearOverTimePoints(J)V

    return-void
.end method
