.class public final Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;
.super Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;
.source "AutoValue_BatchedLogRequest.java"


# instance fields
.field public final logRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/LogRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/LogRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;->logRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;->logRequests:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->getLogRequests()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getLogRequests()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/LogRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;->logRequests:Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;->logRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    const v0, 0xf4243

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BatchedLogRequest{logRequests="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;->logRequests:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
