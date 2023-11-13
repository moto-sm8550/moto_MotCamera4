.class public Lkotlin/ranges/LongProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final first:J

.field public final last:J

.field public final step:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->first:J

    cmp-long v0, p1, p3

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3, p4, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide v3

    invoke-static {p1, p2, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide p1

    sub-long/2addr v3, p1

    invoke-static {v3, v4, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->mod(JJ)J

    move-result-wide p1

    sub-long/2addr p3, p1

    .line 4
    :goto_0
    iput-wide p3, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 5
    iput-wide v1, p0, Lkotlin/ranges/LongProgression;->step:J

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 8

    new-instance v7, Lkotlin/ranges/LongProgressionIterator;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->step:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/LongProgressionIterator;-><init>(JJJ)V

    return-object v7
.end method
