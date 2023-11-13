.class public final Lcom/google/android/exoplayer2/upstream/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static final CONTENT_RANGE_WITH_SIZE:Ljava/util/regex/Pattern;

.field public static final CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "bytes (\\d+)-(\\d+)/(?:\\d+|\\*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    const-string v0, "bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpUtil;->CONTENT_RANGE_WITH_SIZE:Ljava/util/regex/Pattern;

    return-void
.end method
