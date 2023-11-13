.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewHolder"
.end annotation


# instance fields
.field public final mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 3
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget p0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iput p0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 9
    iget p0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iput p0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iput p0, v1, Lcom/motorola/camera/PreviewSize;->width:I

    .line 12
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    iput p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PreviewHolder{mViewSize="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
