.class public interface abstract Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;,
        Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract getSelectedFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract getSelectedIndex()V
.end method

.method public onDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public onRebuffer()V
    .locals 0

    return-void
.end method
