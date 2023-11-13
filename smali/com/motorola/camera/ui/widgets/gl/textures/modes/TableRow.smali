.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;
.super Ljava/lang/Object;
.source "TableRow.java"


# instance fields
.field public isGone:Z

.field public isRtl:Z

.field public mBeginX:F

.field public mBeginY:F

.field public final mCols:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;",
            ">;"
        }
    .end annotation
.end field

.field public mFixedHeight:I

.field public mGravity:I

.field public mLineGap:I

.field public mMaxFixedHeight:F

.field public mMaxFixedWidth:F

.field public mNextX:F

.field public mNextY:F

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public maxCol:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedWidth:F

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginY:F

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    const v1, 0x7fffffff

    .line 12
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isRtl:Z

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateCell()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 2
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    add-float/2addr v1, v2

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    if-ltz v0, :cond_2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 6
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    if-gtz v4, :cond_4

    move v1, v2

    .line 7
    :cond_4
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v4

    .line 8
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 9
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr v4, v5

    .line 10
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v4, v5

    .line 11
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 12
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    .line 13
    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    add-float/2addr v1, v4

    .line 14
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedWidth:F

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 15
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
