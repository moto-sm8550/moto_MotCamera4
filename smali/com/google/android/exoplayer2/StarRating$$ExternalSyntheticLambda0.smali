.class public final synthetic Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/StarRating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    .line 2
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 3

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move p0, v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/StarRating;-><init>(I)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/StarRating;-><init>(IF)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
