.class public final Lcom/motorola/camera/background/provider/BgCaptureRecord;
.super Ljava/lang/Object;
.source "BgCaptureRecord.kt"


# instance fields
.field public clientId:I

.field public comment:Ljava/lang/String;

.field public expirationTime:J

.field public id:J

.field public jobNum:J

.field public mediaStoreUri:Ljava/lang/String;

.field public priority:I

.field public progressLevel:I

.field public progressMax:I

.field public sourceId:I

.field public targetId:I

.field public taskNum:J

.field public thumbHeight:I

.field public thumbWidth:I

.field public thumbnailPath:Ljava/lang/String;

.field public ts:J

.field public useFifo:Z

.field public final uuid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V
    .locals 4

    move-object v0, p0

    move-object v1, p3

    const-string v2, "mediaStoreUri"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    .line 2
    iput-wide v2, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    move-wide v1, p4

    .line 4
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    move-wide v1, p6

    .line 5
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    move v1, p8

    .line 6
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    move v1, p9

    .line 7
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    move v1, p10

    .line 8
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    move/from16 v1, p15

    .line 11
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    move/from16 v1, p16

    .line 12
    iput-boolean v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    move-object/from16 v1, p17

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    move/from16 v1, p18

    .line 14
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    move/from16 v1, p19

    .line 15
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    move/from16 v1, p20

    .line 16
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    move/from16 v1, p21

    .line 17
    iput v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    move-object/from16 v1, p22

    .line 18
    iput-object v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    move-wide/from16 v1, p23

    .line 19
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    iget v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    iget-wide p0, p1, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getTaskId()Lcom/motorola/camera/background/common/TaskId;
    .locals 12

    new-instance v11, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    iget-wide v4, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    iget v6, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    iget v7, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    iget v8, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    iget-boolean v9, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    iget-object v10, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    const/16 v3, 0x1f

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 4
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    .line 5
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    const/16 v2, 0x1f

    .line 7
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    .line 9
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    .line 11
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 12
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    .line 13
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 14
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    .line 15
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 16
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    const/16 v2, 0x1f

    .line 17
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 18
    iget-boolean v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    const/16 v3, 0x1f

    .line 19
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 20
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    .line 21
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    .line 23
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 24
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    .line 25
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "id="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-boolean v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
