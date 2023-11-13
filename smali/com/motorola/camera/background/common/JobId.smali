.class public final Lcom/motorola/camera/background/common/JobId;
.super Ljava/lang/Object;
.source "JobId.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/JobId$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 52\u00020\u0001:\u00015B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BG\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\t\u0010&\u001a\u00020\u000eH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J[\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00c6\u0001J\u0008\u0010)\u001a\u00020\u0006H\u0016J\u0013\u0010*\u001a\u00020\u000e2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\u0006\u0010-\u001a\u00020\u0008J\t\u0010.\u001a\u00020\u0006H\u00d6\u0001J\t\u0010/\u001a\u00020\u0010H\u00d6\u0001J\u0006\u00100\u001a\u000201J\u0018\u00102\u001a\u0002032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u00066"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/JobId;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "clientId",
        "",
        "jobNum",
        "",
        "taskNum",
        "sourceId",
        "targetId",
        "priority",
        "useFifo",
        "",
        "comment",
        "",
        "(IJJIIIZLjava/lang/String;)V",
        "getClientId",
        "()I",
        "setClientId",
        "(I)V",
        "getComment",
        "()Ljava/lang/String;",
        "getJobNum",
        "()J",
        "getPriority",
        "getSourceId",
        "getTargetId",
        "getTaskNum",
        "getUseFifo",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "getKey",
        "hashCode",
        "toString",
        "toTaskId",
        "Lcom/motorola/camera/background/common/TaskId;",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/JobId$CREATOR;


# instance fields
.field private clientId:I

.field private final comment:Ljava/lang/String;

.field private final jobNum:J

.field private final priority:I

.field private final sourceId:I

.field private final targetId:I

.field private final taskNum:J

.field private final useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/JobId$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/JobId$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/JobId;->CREATOR:Lcom/motorola/camera/background/common/JobId$CREATOR;

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    .line 3
    iput-wide p2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iput-wide p4, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    .line 4
    iput p6, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iput p7, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    .line 5
    iput p8, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iput-boolean p9, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iput-object p10, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    .line 14
    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/background/common/JobId;IJJIIIZLjava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/background/common/JobId;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    goto :goto_2

    :cond_2
    move-wide v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/motorola/camera/background/common/JobId;->priority:I

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move p1, v2

    move-wide p2, v3

    move-wide p4, v5

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/motorola/camera/background/common/JobId;->copy(IJJIIIZLjava/lang/String;)Lcom/motorola/camera/background/common/JobId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IJJIIIZLjava/lang/String;)Lcom/motorola/camera/background/common/JobId;
    .locals 12

    new-instance v11, Lcom/motorola/camera/background/common/JobId;

    move-object v0, v11

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/JobId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/JobId;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->clientId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->targetId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/common/JobId;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getClientId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return p0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final getJobNum()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    return-wide v0
.end method

.method public final getKey()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    return p0
.end method

.method public final getSourceId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    return p0
.end method

.method public final getTargetId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    return p0
.end method

.method public final getTaskNum()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    return-wide v0
.end method

.method public final getUseFifo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    const/16 v2, 0x1f

    .line 5
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    .line 7
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    .line 9
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

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

.method public final setClientId(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "JobId(clientId="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toTaskId()Lcom/motorola/camera/background/common/TaskId;
    .locals 12

    .line 1
    new-instance v11, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    iget-wide v2, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    iget-wide v4, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    iget v6, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    iget v7, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    .line 2
    iget v8, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    iget-boolean v9, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

    iget-object v10, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    move-object v0, v11

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->jobNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/motorola/camera/background/common/JobId;->taskNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->sourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->targetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/motorola/camera/background/common/JobId;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/motorola/camera/background/common/JobId;->useFifo:Z

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
    iget-object p0, p0, Lcom/motorola/camera/background/common/JobId;->comment:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
