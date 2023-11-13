.class public final Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;
.super Ljava/lang/Object;
.source "MsgProcessJobAck.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;
    }
.end annotation


# instance fields
.field public final jobContext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProcessJob Msg Ack"

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;

    .line 4
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 5
    invoke-static {p1, v1, p0}, Lcom/google/gson/internal/$Gson$Preconditions;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Params(jobContext="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->jobContext:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
