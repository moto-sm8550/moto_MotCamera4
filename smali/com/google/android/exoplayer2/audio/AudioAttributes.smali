.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Api32;,
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Api29;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;


# instance fields
.field public final allowedCapturePolicy:I

.field public audioAttributesV21:Landroid/media/AudioAttributes;

.field public final contentType:I

.field public final flags:I

.field public final spatializationBehavior:I

.field public final usage:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move v1, v5

    move v2, v5

    move v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIIII)V

    .line 2
    sput-object v6, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    add-int/2addr v1, p0

    return v1
.end method
