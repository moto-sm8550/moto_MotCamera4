.class public final Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;
.super Ljava/lang/Object;
.source "MsgProcessJobComplete.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;
    }
.end annotation


# instance fields
.field public final jobContext:Ljava/lang/String;

.field public final resultsContext:Ljava/lang/String;

.field public final status:Lcom/motorola/camera/background/common/ReturnCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;

    .line 2
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 3
    invoke-static {p1, v1, p0}, Lcom/google/gson/internal/$Gson$Preconditions;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DONE"

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object p1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Params(jobContext="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultsContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
