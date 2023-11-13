.class public interface abstract Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V

    .line 3
    sput-object v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;

    return-void
.end method
