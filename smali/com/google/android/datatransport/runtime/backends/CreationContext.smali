.class public abstract Lcom/google/android/datatransport/runtime/backends/CreationContext;
.super Ljava/lang/Object;
.source "CreationContext.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getBackendName()Ljava/lang/String;
.end method

.method public abstract getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;
.end method

.method public abstract getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;
.end method
