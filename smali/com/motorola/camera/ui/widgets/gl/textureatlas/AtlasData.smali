.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;
.super Ljava/lang/Object;
.source "AtlasData.java"


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mFrame:Landroid/graphics/Rect;

.field public mFrameRel:Landroid/graphics/RectF;

.field public mNinePatch:Z

.field public mSourceSize:Landroid/graphics/Point;

.field public mSpriteSourceSize:Landroid/graphics/Rect;

.field public mTrimmed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFileName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    .line 5
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mTrimmed:Z

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    .line 7
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    const-string p2, ".9"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mNinePatch:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, -0x2

    iget p3, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 12
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p6, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    div-float/2addr p3, p4

    iget p5, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    iget p6, p6, Landroid/graphics/Point;->y:I

    int-to-float p6, p6

    div-float/2addr p5, p6

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p2, p6

    invoke-direct {p1, p3, p5, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AtlasData{mFileName=\'"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFileName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mFrame="

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTrimmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mTrimmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSpriteSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameRel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNinePatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mNinePatch:Z

    const/16 v1, 0x7d

    .line 5
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
