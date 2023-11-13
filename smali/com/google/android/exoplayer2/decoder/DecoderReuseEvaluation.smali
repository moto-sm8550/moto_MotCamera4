.class public final Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
.super Ljava/lang/Object;
.source "DecoderReuseEvaluation.java"


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final discardReasons:I

.field public final newFormat:Lcom/google/android/exoplayer2/Format;

.field public final oldFormat:Lcom/google/android/exoplayer2/Format;

.field public final result:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    .line 9
    iput p4, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    .line 10
    iput p5, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    return-void

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
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
    const-class v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    iget v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    iget v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
