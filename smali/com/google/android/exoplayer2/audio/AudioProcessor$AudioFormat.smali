.class public final Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFormat"
.end annotation


# static fields
.field public static final NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioFormat[sampleRate=-1, channelCount=-1, encoding=-1]"

    return-object p0
.end method
