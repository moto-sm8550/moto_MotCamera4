.class public final Lcom/google/android/datatransport/cct/CCTDestination;
.super Ljava/lang/Object;
.source "CCTDestination.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/EncodedDestination;


# static fields
.field public static final DEFAULT_END_POINT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

.field public static final SUPPORTED_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final endPoint:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "hts/frbslgiggolai.o/0clgbthfra=snpoo"

    const-string/jumbo v1, "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3"

    .line 1
    invoke-static {v0, v1}, Lcom/airbnb/lottie/L;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    const-string v1, "hts/frbslgigp.ogepscmv/ieo/eaybtho"

    const-string/jumbo v2, "tp:/ieaeogn-agolai.o/1frlglgc/aclg"

    .line 2
    invoke-static {v1, v2}, Lcom/airbnb/lottie/L;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "AzSCki82AwsLzKd5O8zo"

    const-string v2, "IayckHiZRO1EFl1aGoK"

    .line 3
    invoke-static {v1, v2}, Lcom/airbnb/lottie/L;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/datatransport/Encoding;

    .line 5
    new-instance v3, Lcom/google/android/datatransport/Encoding;

    const-string v4, "proto"

    invoke-direct {v3, v4}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/google/android/datatransport/Encoding;

    const-string v4, "json"

    invoke-direct {v3, v4}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 8
    new-instance v1, Lcom/google/android/datatransport/cct/CCTDestination;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public static fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "1$"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-ne v1, p0, :cond_2

    const/4 p0, 0x0

    .line 6
    aget-object p0, v0, p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 8
    aget-object v0, v0, v1

    .line 9
    new-instance v1, Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, p0, v0}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing endpoint in CCTDestination extras"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extra is not a valid encoded LegacyFlgDestination"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version marker missing from extras"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getExtras()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1$"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2
    iget-object p0, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "\\"

    aput-object v2, v1, p0

    const/4 p0, 0x3

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    aput-object v0, v1, p0

    const-string p0, "%s%s%s%s"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
