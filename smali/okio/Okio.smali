.class public final Lokio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lokio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static source(Ljava/io/InputStream;)Lokio/Source;
    .locals 2

    .line 1
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    new-instance v1, Lokio/Okio$2;

    invoke-direct {v1, v0, p0}, Lokio/Okio$2;-><init>(Lokio/Timeout;Ljava/io/InputStream;)V

    return-object v1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
