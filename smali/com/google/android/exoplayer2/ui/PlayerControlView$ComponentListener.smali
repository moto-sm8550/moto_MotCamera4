.class public final Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-ne v2, p1, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_e

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto :goto_4

    .line 10
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-ne v2, p1, :cond_4

    .line 11
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto :goto_4

    .line 12
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-ne v2, p1, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_4

    .line 14
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-ne v2, p1, :cond_6

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->pause()V

    goto :goto_4

    .line 17
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_d

    .line 18
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 19
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    move v0, v3

    :goto_0
    const/4 v2, 0x2

    if-gt v0, v2, :cond_c

    add-int v4, p1, v0

    .line 20
    rem-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    if-eq v4, v3, :cond_8

    if-eq v4, v2, :cond_7

    goto :goto_2

    :cond_7
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_8
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_a

    :cond_9
    :goto_1
    move v5, v3

    :cond_a
    :goto_2
    if-eqz v5, :cond_b

    move p1, v4

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_c
    :goto_3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_4

    .line 22
    :cond_d
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-ne p0, p1, :cond_e

    .line 23
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    :cond_e
    :goto_4
    return-void
.end method

.method public final onEvents(Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    :cond_1
    const/16 v1, 0x8

    .line 7
    iget-object v2, p1, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    :cond_2
    const/16 v1, 0x9

    .line 10
    iget-object v2, p1, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    :cond_4
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0xd
    .end array-data

    :array_3
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method public final onScrubMove(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 5
    invoke-static {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onScrubStart(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 6
    invoke-static {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onScrubStop(JZ)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    if-nez p3, :cond_3

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p3, :cond_3

    .line 4
    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-ne v0, v5, :cond_1

    move-wide p1, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    .line 9
    :goto_1
    invoke-interface {p3, v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    :cond_3
    return-void
.end method
