.class public final Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public lastPeriodUidWithTracks:Ljava/lang/Object;

.field public final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field public final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p1, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    return-void
.end method

.method public final onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/TextureView;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :goto_0
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :goto_0
    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Lcom/google/common/collect/ImmutableList;

    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 14
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    if-ne p1, v0, :cond_2

    return-void

    .line 17
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    .line 18
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 19
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p1, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateAspectRatio()V

    return-void
.end method

.method public final onVisibilityChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method
