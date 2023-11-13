.class public final Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;
.super Ljava/lang/Object;
.source "HistogramComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferHolder"
.end annotation


# instance fields
.field public final mWidth:I

.field public final mYBuff:[B


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    .line 6
    div-int/lit8 v3, v3, 0x8

    mul-int/2addr p1, v3

    .line 7
    new-array p1, p1, [B

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_0

    mul-int/lit8 v5, v1, 0x8

    mul-int/2addr v5, v2

    .line 8
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    invoke-virtual {v0, p1, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 10
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mYBuff:[B

    return-void
.end method
