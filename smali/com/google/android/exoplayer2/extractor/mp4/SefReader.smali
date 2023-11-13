.class public final Lcom/google/android/exoplayer2/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
    }
.end annotation


# static fields
.field public static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field public static final COLON_SPLITTER:Lcom/google/common/base/Splitter;


# instance fields
.field public final dataReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;",
            ">;"
        }
    .end annotation
.end field

.field public readerState:I

.field public tailLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    .line 2
    new-instance v1, Lcom/google/common/base/Splitter;

    new-instance v2, Lcom/google/common/base/Splitter$1;

    invoke-direct {v2, v0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 3
    sput-object v1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    const/16 v0, 0x2a

    .line 4
    new-instance v1, Lcom/google/common/base/CharMatcher$Is;

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    .line 5
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v2, Lcom/google/common/base/Splitter$1;

    invoke-direct {v2, v1}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v0, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    return-void
.end method
