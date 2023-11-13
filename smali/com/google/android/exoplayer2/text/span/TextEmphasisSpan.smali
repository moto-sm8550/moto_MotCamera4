.class public final Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;
.super Ljava/lang/Object;
.source "TextEmphasisSpan.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/span/LanguageFeatureSpan;


# instance fields
.field public markFill:I

.field public markShape:I

.field public final position:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markShape:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markFill:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->position:I

    return-void
.end method
