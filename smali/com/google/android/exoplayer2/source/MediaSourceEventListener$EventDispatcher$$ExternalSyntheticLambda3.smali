.class public final synthetic Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field public final synthetic f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

.field public final synthetic f$4:Ljava/io/IOException;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$4:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$4:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$5:Z

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
