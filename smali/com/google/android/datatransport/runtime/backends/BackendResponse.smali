.class public abstract Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.super Ljava/lang/Object;
.source "BackendResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 4

    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public abstract getNextRequestWaitMillis()J
.end method

.method public abstract getStatus$enumunboxing$()I
.end method
