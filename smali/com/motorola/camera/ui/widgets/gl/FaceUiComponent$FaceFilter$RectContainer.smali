.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectContainer"
.end annotation


# instance fields
.field public faceCount:I

.field public index:I

.field public final mFaceRects:[Landroid/graphics/Rect;

.field public mSumBottom:I

.field public mSumLeft:I

.field public mSumRight:I

.field public mSumTop:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/Face;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    .line 5
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 7
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    .line 9
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    .line 10
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    .line 11
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    .line 12
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    return-void
.end method
