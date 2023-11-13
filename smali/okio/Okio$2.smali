.class public final Lokio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final synthetic val$in:Ljava/io/InputStream;

.field public final synthetic val$timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    iput-object p2, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    :try_start_0
    iget-object p3, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    invoke-virtual {p3}, Lokio/Timeout;->throwIfReached()V

    .line 2
    invoke-virtual {p1, p2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object p3

    .line 3
    iget v0, p3, Lokio/Segment;->limit:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4
    iget-object p0, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v1, p3, Lokio/Segment;->data:[B

    iget v2, p3, Lokio/Segment;->limit:I

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 5
    :cond_0
    iget v0, p3, Lokio/Segment;->limit:I

    add-int/2addr v0, p0

    iput v0, p3, Lokio/Segment;->limit:I

    .line 6
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v2, p0

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getsockname failed"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 10
    :cond_2
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "source("

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
