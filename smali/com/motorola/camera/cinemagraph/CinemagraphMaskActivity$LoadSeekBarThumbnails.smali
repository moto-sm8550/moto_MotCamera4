.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;
.super Ljava/lang/Object;
.source "CinemagraphMaskActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadSeekBarThumbnails"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    const/4 v1, 0x7

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 5
    iget v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    .line 6
    div-int/2addr v1, v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42b40000    # 90.0f

    .line 9
    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 v3, 0x3e800000    # 0.25f

    .line 10
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v0, :cond_0

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 12
    iget v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    add-int/lit8 v3, v3, -0x1

    mul-int v4, v12, v1

    .line 13
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 15
    iget v5, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    .line 16
    iget v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    .line 17
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 18
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 20
    invoke-virtual {v4, v3, v13, v11}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInputImage(ILandroid/graphics/Bitmap;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 22
    iget v6, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    .line 23
    iget v7, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    const/4 v9, 0x0

    move-object v3, v13

    move-object v8, v10

    .line 24
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 25
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
