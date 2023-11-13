.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;
.super Ljava/lang/Object;
.source "JobMgrService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressUpdates"
.end annotation


# instance fields
.field public final feature:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final numPending:I

.field public final progressLevel:I

.field public final progressMax:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    .line 4
    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    .line 5
    iput p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    .line 3
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    .line 5
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 6
    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ProgressUpdates(name="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
