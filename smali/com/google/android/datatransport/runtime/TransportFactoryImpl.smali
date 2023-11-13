.class public final Lcom/google/android/datatransport/runtime/TransportFactoryImpl;
.super Ljava/lang/Object;
.source "TransportFactoryImpl.java"


# instance fields
.field public final supportedPayloadEncodings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation
.end field

.field public final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Lcom/google/android/datatransport/runtime/TransportInternal;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->supportedPayloadEncodings:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    return-void
.end method


# virtual methods
.method public final getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/datatransport/Encoding;",
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;)",
            "Lcom/google/android/datatransport/Transport<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->supportedPayloadEncodings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportImpl;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/google/android/datatransport/runtime/TransportImpl;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->supportedPayloadEncodings:Ljava/util/Set;

    aput-object p0, v0, p1

    const-string p0, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
