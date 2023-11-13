.class public final Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;
.super Ljava/lang/Object;
.source "CliPhotoPreviewPresentation.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dateModified:J

.field public final synthetic $dateTaken:J

.field public final synthetic $fileName:Ljava/lang/String;

.field public final synthetic $filePath:Ljava/lang/String;

.field public final synthetic $globalUUID:J

.field public final synthetic $height:I

.field public final synthetic $orientation:I

.field public final synthetic $this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

.field public final synthetic $uri:Landroid/net/Uri;

.field public final synthetic $width:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iput-wide p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$globalUUID:J

    iput-object p4, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$fileName:Ljava/lang/String;

    iput-object p6, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$filePath:Ljava/lang/String;

    iput p7, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$width:I

    iput p8, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$height:I

    iput p9, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$orientation:I

    iput-wide p10, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateTaken:J

    iput-wide p12, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateModified:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iget-wide v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$globalUUID:J

    iget-object v5, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$uri:Landroid/net/Uri;

    iget-object v6, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$fileName:Ljava/lang/String;

    iget-object v7, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$filePath:Ljava/lang/String;

    iget v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$width:I

    iget v8, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$height:I

    iget v14, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$orientation:I

    .line 2
    iget-wide v9, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateTaken:J

    iget-wide v11, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateModified:J

    .line 3
    iget-object v13, v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v13, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v13, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v13, :cond_1

    .line 5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    goto :goto_0

    :cond_1
    const/16 v13, 0x320

    :goto_0
    move-object/from16 v16, v1

    int-to-double v0, v13

    move/from16 v17, v14

    int-to-double v14, v2

    div-double/2addr v0, v14

    .line 6
    new-instance v15, Landroid/util/Size;

    move-wide/from16 v18, v11

    int-to-double v11, v8

    mul-double/2addr v11, v0

    double-to-int v0, v11

    invoke-direct {v15, v13, v0}, Landroid/util/Size;-><init>(II)V

    .line 7
    new-instance v0, Lcom/motorola/camera/CameraData;

    .line 8
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v13

    const/4 v1, 0x0

    move-object v2, v0

    move-wide v8, v9

    move-wide/from16 v10, v18

    move/from16 v14, v17

    move-object/from16 v17, v15

    move v15, v1

    .line 9
    invoke-direct/range {v2 .. v15}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    .line 10
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 12
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 13
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v2, v3

    :cond_2
    mul-int/2addr v2, v0

    .line 14
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    move v3, v4

    .line 15
    :cond_3
    div-int/2addr v2, v3

    .line 16
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 17
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 18
    :cond_4
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 19
    :goto_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V

    :goto_2
    move-object/from16 v0, p0

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    return-void
.end method
