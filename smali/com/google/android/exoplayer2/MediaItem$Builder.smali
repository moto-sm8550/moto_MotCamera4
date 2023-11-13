.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

.field public customCacheKey:Ljava/lang/String;

.field public drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

.field public liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

.field public mediaId:Ljava/lang/String;

.field public mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public mimeType:Ljava/lang/String;

.field public streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 5
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/exoplayer2/MediaItem;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    .line 6
    new-instance v10, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 8
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v5, :cond_2

    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V

    :cond_2
    move-object v5, v1

    .line 10
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    move-object v14, v10

    goto :goto_2

    :cond_3
    move-object v14, v1

    .line 11
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem;

    .line 12
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    move-object v12, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v13, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V

    .line 15
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v15, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-direct {v15, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V

    .line 18
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_4
    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v1
.end method
