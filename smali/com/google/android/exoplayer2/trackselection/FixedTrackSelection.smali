.class public final Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "FixedTrackSelection.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V
    .locals 1

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p2, p3, v0

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    return-void
.end method


# virtual methods
.method public final getSelectedIndex()V
    .locals 0

    return-void
.end method
