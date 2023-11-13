.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 10

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-object v4, p0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    sget v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->$r8$clinit:I

    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    const/4 p0, 0x2

    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 p0, 0x3

    .line 6
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 p0, 0x4

    .line 7
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p0
.end method
