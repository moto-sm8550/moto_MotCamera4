.class public final Lcom/motorola/camera/cli/onboard/model/Onboard;
.super Ljava/lang/Object;
.source "Onboard.kt"


# instance fields
.field public final image:I

.field public final isAnimation:Z

.field public final text:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    .line 2
    iput p2, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    iget v3, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    iget v3, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    iget-boolean p1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Onboard(image="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->isAnimation:Z

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
