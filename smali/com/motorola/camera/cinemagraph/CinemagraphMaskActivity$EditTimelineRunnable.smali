.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;
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
    name = "EditTimelineRunnable"
.end annotation


# instance fields
.field public final mEndIndex:I

.field public final mStartIndex:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mStartIndex:I

    .line 3
    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->restartEngine()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 6
    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mStartIndex:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setBaseIndex(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 9
    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mStartIndex:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImages(II)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->startPreview()V

    :cond_0
    return-void
.end method
