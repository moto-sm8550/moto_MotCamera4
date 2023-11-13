.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 11

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v5, 0x4

    .line 5
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    const/4 v6, 0x5

    .line 6
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v6, 0x6

    .line 7
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    if-nez v1, :cond_0

    new-array v1, p0, [I

    :cond_0
    move-object v6, v1

    if-nez v0, :cond_1

    new-array v0, p0, [Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-array v1, p0, [Landroid/net/Uri;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    :goto_0
    if-nez v5, :cond_2

    new-array p0, p0, [J

    move-object v7, p0

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    move-object v1, p1

    move-object v5, v6

    move-object v6, v0

    .line 10
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method
