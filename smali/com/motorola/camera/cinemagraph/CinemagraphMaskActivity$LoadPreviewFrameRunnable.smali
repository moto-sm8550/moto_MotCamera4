.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;
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
    name = "LoadPreviewFrameRunnable"
.end annotation


# instance fields
.field public mFrameIndex:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->mFrameIndex:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 6
    iget-object v4, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 7
    iget-object v5, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    if-eqz v5, :cond_0

    .line 8
    iget-object v5, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 9
    iget v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->mFrameIndex:I

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 11
    invoke-virtual {v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v3

    sub-int/2addr v6, v3

    .line 12
    invoke-virtual {v5, v4, v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createSingleFrame(Landroid/graphics/Bitmap;I)V

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 14
    iget-object v4, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 15
    iget-object v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    .line 16
    iput-object v3, v4, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 17
    invoke-virtual {v4}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updatePreviewFrame()Z

    move-result v3

    .line 18
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateDrawDuration(J)V

    if-eqz v3, :cond_0

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 22
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 24
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 25
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    new-instance v1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
