.class public final synthetic Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iput p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$1:I

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 2
    iget-object p0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float p0, v1

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 6
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->start()V

    .line 7
    iget-object p0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return-void
.end method
