.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


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
.method public abstract getEvent()Lcom/google/android/datatransport/runtime/EventInternal;
.end method

.method public abstract getId()J
.end method

.method public abstract getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
.end method
