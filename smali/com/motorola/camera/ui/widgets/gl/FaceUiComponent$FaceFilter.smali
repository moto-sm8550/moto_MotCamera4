.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;
    }
.end annotation


# instance fields
.field public final mFaceRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addFace(Landroid/hardware/camera2/params/Face;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;-><init>(Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    .line 6
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    aget-object v3, v2, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    aget-object v3, v2, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    .line 8
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    aget-object v3, v2, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    .line 9
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    aget-object v0, v2, v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 12
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    .line 13
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    .line 14
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    .line 15
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    .line 16
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    :goto_1
    return-void
.end method

.method public final getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    div-int/2addr p1, v0

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    div-int/2addr v1, v0

    .line 5
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    div-int/2addr v2, v0

    .line 6
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    div-int/2addr p0, v0

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
