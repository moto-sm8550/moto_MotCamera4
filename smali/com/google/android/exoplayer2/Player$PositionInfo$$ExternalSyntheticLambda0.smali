.class public final synthetic Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# static fields
.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(IIIII)Z
    .locals 2

    sget-object p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    const/4 p0, 0x2

    const/16 v0, 0x4d

    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    const/16 v1, 0x4f

    if-ne p3, v1, :cond_0

    if-ne p4, v0, :cond_0

    if-eq p5, v0, :cond_1

    if-eq p1, p0, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 13

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2
    sget-object p0, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/google/android/exoplayer2/MediaItem;

    const/4 p0, 0x2

    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 p0, 0x3

    .line 6
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 p0, 0x4

    .line 7
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 p0, 0x5

    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 p0, 0x6

    .line 9
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/Player$PositionInfo;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p0
.end method
