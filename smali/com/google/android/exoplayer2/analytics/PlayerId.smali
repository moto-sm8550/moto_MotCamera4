.class public final Lcom/google/android/exoplayer2/analytics/PlayerId;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;
    }
.end annotation


# instance fields
.field public final logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V

    .line 2
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    return-void
.end method
