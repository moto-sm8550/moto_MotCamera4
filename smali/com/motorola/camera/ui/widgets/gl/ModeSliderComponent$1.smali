.class public final Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;
.super Ljava/lang/Object;
.source "ModeSliderComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEmptySpaceTap(Landroid/graphics/PointF;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 9
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 10
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    .line 11
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v3, v2

    sub-float v2, v1, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 14
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 16
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    .line 17
    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onEmptySpaceTouched()V
    .locals 0

    return-void
.end method

.method public final onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 4
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_0
    return-void
.end method

.method public final onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    return-void
.end method

.method public final onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress()V

    :cond_0
    return-void
.end method

.method public final onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress()V

    :cond_0
    return-void
.end method
