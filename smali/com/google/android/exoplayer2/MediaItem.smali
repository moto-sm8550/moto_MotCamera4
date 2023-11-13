.class public final Lcom/google/android/exoplayer2/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;,
        Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$Subtitle;,
        Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;,
        Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field public final clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

.field public final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 12
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    return-void
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 2
    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)V

    .line 5
    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 10
    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz p0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 18
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz p0, :cond_0

    .line 19
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
