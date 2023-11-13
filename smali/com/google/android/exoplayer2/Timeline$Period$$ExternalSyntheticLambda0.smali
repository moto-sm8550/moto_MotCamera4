.class public final synthetic Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 11

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 p0, 0x2

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 p0, 0x3

    .line 4
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 p0, 0x4

    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sget-object p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :goto_0
    move-object v9, p0

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 9
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0

    .line 10
    :goto_1
    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 11
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/os/Bundle;)V

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
