.class public final synthetic Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/mcf/McfMetadataModificationCallable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    iput-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;->f$1:[B

    return-void
.end method


# virtual methods
.method public final modifyMetadata([B)[B
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    iget-object p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;->f$1:[B

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    .line 1
    :try_start_0
    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 2
    iget-object p1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 4
    invoke-virtual {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatermarkEditorService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
