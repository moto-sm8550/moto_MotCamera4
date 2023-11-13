.class public final synthetic Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    check-cast p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 p1, 0x16

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method
