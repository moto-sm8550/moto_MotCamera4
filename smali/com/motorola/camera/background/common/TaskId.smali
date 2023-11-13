.class public final Lcom/motorola/camera/background/common/TaskId;
.super Ljava/lang/Object;
.source "TaskId.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/TaskId$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;


# instance fields
.field public clientId:I

.field public final comment:Ljava/lang/String;

.field public final jobNum:J

.field public final priority:I

.field public final sourceId:I

.field public final targetId:I

.field public final taskNum:J

.field public final useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/TaskId$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 2
    iput-wide p2, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iput-wide p4, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    iput p6, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iput p7, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 4
    iput p8, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    .line 5
    iput-boolean p9, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    .line 6
    iput-object p10, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    .line 7
    sget-object p8, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    const/4 p8, 0x0

    const/4 p9, 0x1

    const-string p10, ""

    .line 8
    invoke-direct/range {p0 .. p10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/TaskId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    const/16 v2, 0x1f

    .line 5
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 7
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    .line 9
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toJobId()Lcom/motorola/camera/background/common/JobId;
    .locals 12

    .line 1
    new-instance v11, Lcom/motorola/camera/background/common/JobId;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v2, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v4, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v6, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v7, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 2
    iget v8, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v9, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v10, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object v0, v11

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TaskId(clientId="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
