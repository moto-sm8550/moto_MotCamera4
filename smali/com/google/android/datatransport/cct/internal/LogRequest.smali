.class public abstract Lcom/google/android/datatransport/cct/internal/LogRequest;
.super Ljava/lang/Object;
.source "LogRequest.java"


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
.method public abstract getClientInfo()Lcom/google/android/datatransport/cct/internal/ClientInfo;
.end method

.method public abstract getLogEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/LogEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogSource()Ljava/lang/Integer;
.end method

.method public abstract getLogSourceName()Ljava/lang/String;
.end method

.method public abstract getQosTier()Lcom/google/android/datatransport/cct/internal/QosTier;
.end method

.method public abstract getRequestTimeMs()J
.end method

.method public abstract getRequestUptimeMs()J
.end method
