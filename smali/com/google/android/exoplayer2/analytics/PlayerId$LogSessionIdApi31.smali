.class public final Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlayerId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogSessionIdApi31"
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;


# instance fields
.field public final logSessionId:Landroid/media/metrics/LogSessionId;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method
