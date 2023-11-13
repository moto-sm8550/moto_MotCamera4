.class public final Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# instance fields
.field public extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field public extractorInput:Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

.field public final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final getCurrentInputPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    if-eqz p0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    .line 2
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 5
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 6
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto/16 :goto_6

    .line 7
    :cond_1
    array-length p3, p1

    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    .line 8
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput p6, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    goto :goto_4

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_6

    .line 12
    iget-wide v1, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez p0, :cond_4

    .line 14
    iget-wide p2, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    cmp-long p0, p2, p4

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move p7, p6

    .line 15
    :cond_4
    :goto_1
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 16
    iput p6, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 17
    throw p1

    .line 18
    :catch_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_6

    .line 19
    iget-wide v1, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, p6

    goto :goto_3

    :cond_6
    :goto_2
    move v1, p7

    .line 20
    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 21
    iput p6, v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_7
    :goto_4
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez p3, :cond_a

    .line 23
    new-instance p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    .line 24
    sget p3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :goto_5
    array-length p4, p1

    if-ge p6, p4, :cond_9

    .line 27
    aget-object p4, p1, p6

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    array-length p4, p1

    add-int/lit8 p4, p4, -0x1

    if-ge p6, p4, :cond_8

    const-string p4, ", "

    .line 29
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    .line 30
    :cond_9
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x3a

    .line 31
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result p3

    .line 32
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "None of the available extractors ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p0, p8}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    return-void
.end method
