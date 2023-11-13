.class public final Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoSaveCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/panorama/PanoSaveCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    .line 3
    iput p2, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    .line 4
    iput p3, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    return-void
.end method
