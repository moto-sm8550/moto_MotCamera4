.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;
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
    name = "LoadInputFrameRunnable"
.end annotation


# instance fields
.field public mFrameIndex:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->mFrameIndex:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    .line 4
    iget v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 8
    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->mFrameIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInputImage(ILandroid/graphics/Bitmap;Z)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 15
    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 16
    invoke-virtual {v2}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getmMarginX()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 17
    iget-object v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 18
    invoke-virtual {v3}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getmMarginY()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 20
    invoke-virtual {v4}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetWidth()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 21
    iget-object v5, v5, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 22
    invoke-virtual {v5}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetheight()I

    move-result v5

    .line 23
    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p0, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updatePreviewFrame()Z

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
