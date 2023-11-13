.class public final Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field public final retryDelayMillis:J

.field public final type:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method
