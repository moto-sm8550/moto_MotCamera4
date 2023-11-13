.class public Lcom/motorola/camera/editor/DocEditorActivity;
.super Landroid/app/Activity;
.source "DocEditorActivity.java"

# interfaces
.implements Lcom/motorola/camera/editor/load/LoadDocJpegListener;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public hasRotated:Z

.field public final jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

.field public mAdjustImage:Landroid/widget/ImageView;

.field public mAdjustPage:Landroid/widget/RelativeLayout;

.field public mAdjusted:Z

.field public mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

.field public mDeleteButton:Landroid/widget/ImageButton;

.field public mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

.field public mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

.field public mDocServiceMode:Z

.field public mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public mInitFilter:I

.field public mInitRotate:F

.field public volatile mIsActivityRunning:Z

.field public mIsSaveComplete:Z

.field public mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

.field public mJpegLoadFinish:Z

.field public mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

.field public final mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

.field public mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

.field public mReviewPage:Landroid/widget/RelativeLayout;

.field public mRotateButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/Button;

.field public mSavedEdit:Z

.field public mSpinner:Landroid/widget/ProgressBar;

.field public mSpinnerText:Landroid/widget/TextView;

.field public mState:I

.field public final mUiHandler:Landroid/os/Handler;

.field public originalURI:Landroid/net/Uri;


# direct methods
.method public static $r8$lambda$h2pf6d9OQmVKfz0pHZXWFOPbBOc(Lcom/motorola/camera/editor/DocEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 9
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    .line 13
    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    .line 15
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    .line 16
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    .line 17
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

    .line 18
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$3;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    return-void
.end method


# virtual methods
.method public final getCroppedBmpFromOriginalJpeg([I[I)[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p0, p0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final initRectWithOriginalPoints()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v4, :cond_0

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v4, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    iget v5, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v6, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    iput v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    float-to-int v6, v0

    .line 8
    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v8, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v10, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v12, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v14, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    const/16 v3, 0x5a

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    if-eq v6, v3, :cond_4

    const/16 v3, 0xb4

    if-eq v6, v3, :cond_3

    const/16 v3, 0x10e

    if-eq v6, v3, :cond_2

    const/4 v3, 0x0

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_6

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v7, v0, v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v3

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v7, v22

    :goto_3
    if-eqz v7, :cond_7

    move v8, v5

    goto :goto_4

    :cond_7
    move v8, v4

    :goto_4
    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v5

    .line 41
    :goto_5
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v10, :cond_9

    neg-int v12, v4

    int-to-float v12, v12

    div-float/2addr v12, v11

    neg-int v13, v5

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 42
    invoke-virtual {v14, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 44
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v6

    const/high16 v6, 0x43340000    # 180.0f

    rem-float/2addr v0, v6

    cmpl-float v0, v0, v9

    if-nez v0, :cond_a

    move/from16 v3, v22

    :cond_a
    if-eqz v3, :cond_b

    move v0, v5

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    if-ne v0, v8, :cond_d

    if-eq v4, v7, :cond_e

    :cond_d
    int-to-float v3, v8

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v7

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 45
    invoke-virtual {v14, v3, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_e
    if-eqz v10, :cond_f

    int-to-float v0, v8

    div-float/2addr v0, v11

    int-to-float v3, v7

    div-float/2addr v3, v11

    .line 46
    invoke-virtual {v14, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    :cond_f
    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 49
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 50
    iget-object v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v0

    .line 52
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    invoke-virtual {v1, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    return-void
.end method

.method public final loadBitmap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f11014a

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ORIGINAL"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, "/REQUIRE_ORIGINAL"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-lez v1, :cond_3

    .line 15
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    :cond_4
    :goto_0
    new-instance v1, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2, p0}, Lcom/motorola/camera/editor/load/LoadDocJpegTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V

    .line 18
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService;->saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->onBackPressed()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v3, 0x9

    .line 5
    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v3, 0x400

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x80

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    const v2, 0x7f0d005b

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0a008a

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 12
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a032d

    .line 13
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a032c

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const v2, 0x7f0a01c2

    .line 15
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    const v2, 0x7f0a033d

    .line 16
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinner:Landroid/widget/ProgressBar;

    const v2, 0x7f0a03e7

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinnerText:Landroid/widget/TextView;

    .line 18
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$2;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$2;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    .line 19
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 20
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    iget-object v6, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, 0x2

    div-int/2addr v6, v9

    iget-object v10, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v10

    sub-int v10, v6, v10

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v7, 0x3

    .line 26
    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    .line 27
    array-length v8, v7

    move v10, v5

    :goto_0
    if-ge v10, v8, :cond_1

    aget v12, v7, v10

    .line 28
    new-instance v13, Landroid/widget/TextView;

    iget-object v14, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v14, 0x7f120203

    .line 31
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/high16 v14, 0x41700000    # 15.0f

    .line 32
    invoke-virtual {v13, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    iget-object v15, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 34
    invoke-static {v12}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode$EnumUnboxingLocalUtility;->getMText(I)I

    move-result v9

    .line 35
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-static {v12}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode$EnumUnboxingLocalUtility;->getMId(I)I

    move-result v9

    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v9, 0x11

    .line 38
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v9, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-static {v9, v14}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v9

    .line 40
    invoke-virtual {v13, v9, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    new-instance v9, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2, v3}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/FilterButtonView;Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x2

    goto :goto_0

    .line 43
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v2, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_1
    const v2, 0x7f0a0058

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 48
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a033a

    .line 49
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    .line 50
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "DOCUMENT_SERVICE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 52
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f0a0334

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    const v3, 0x7f080204

    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v5}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0145

    .line 56
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    .line 57
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a005d

    .line 58
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a005b

    .line 59
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    const v2, 0x7f0a012c

    .line 60
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    const v2, 0x7f0a005c

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 62
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V

    const v2, 0x7f0a0160

    .line 63
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 66
    iput-boolean v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cacheUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DocEditorActivity"

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 72
    :goto_2
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "originalURI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    goto :goto_3

    .line 74
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    if-nez v0, :cond_3

    const-string v0, "Original URI is null"

    .line 75
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap()V

    .line 78
    :goto_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResource()V

    .line 11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 13
    iget-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    .line 14
    iget-object v3, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v4, "SEQID"

    invoke-virtual {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

    iget-object v3, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v4, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v2, v3, v4, v1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    .line 16
    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    .line 22
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerReceiver(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.camera3.DOC_EDITOR_ACTION_RECEIVER"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    .line 8
    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public final releaseImage(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final showExitDialog()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11014c

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11014b

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    const v3, 0x7f110146

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    const v3, 0x7f110147

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 11
    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final updateViewForState$enumunboxing$(I)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    if-eq v1, v3, :cond_0

    const-string p0, "DocEditorActivity"

    const-string p1, "invalid editor state."

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_c

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-nez v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v2, v1

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 10
    invoke-static {v1, v0, v5, v5, v5}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->setupImage(Landroid/graphics/Bitmap;)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v5}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    goto/16 :goto_5

    .line 19
    :cond_3
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v1, :cond_6

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v1, v1

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DOCUMENT_ORIENTATION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 24
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v2, :cond_9

    iget-object v4, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9

    .line 25
    iget v6, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v6, v3, :cond_7

    .line 26
    iget-object v4, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    const/4 v3, 0x3

    if-ne v6, v3, :cond_8

    .line 27
    iget-object v4, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 28
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 31
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 32
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 34
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 36
    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_a

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBmp:Landroid/graphics/Bitmap;

    .line 45
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_c

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBmp:Landroid/graphics/Bitmap;

    :cond_c
    :goto_5
    return-void

    .line 48
    :cond_d
    throw v0
.end method
