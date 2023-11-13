.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    sget p1, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "ANALYTICS_DOC_EDITOR_EDGES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getAdjustedPoints()[F

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 6
    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    const/16 v0, 0x8

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 8
    aget v6, p1, v5

    float-to-int v6, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 9
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->getCroppedBmpFromOriginalJpeg([I[I)[B

    move-result-object v3

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    :cond_1
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v6, v0, v1

    aget v7, v0, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 13
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 14
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v6, v2, :cond_2

    aget p1, v0, v1

    aget v5, v0, v2

    .line 15
    invoke-static {v3, p1, v5, v0, v4}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object p1

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v3}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 17
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v5, v0, v1

    aget v0, v0, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    goto :goto_1

    :cond_2
    if-ne v6, p1, :cond_3

    aget p1, v0, v1

    aget v5, v0, v2

    .line 20
    invoke-static {v3, p1, v5, v0, v4}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object p1

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v3}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 22
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v5, v0, v1

    aget v0, v0, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v5}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 28
    iput-boolean v4, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    .line 29
    iput-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 32
    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 33
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResource()V

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    return-void
.end method
