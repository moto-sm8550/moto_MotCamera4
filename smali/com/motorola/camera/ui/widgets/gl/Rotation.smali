.class public final Lcom/motorola/camera/ui/widgets/gl/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"


# instance fields
.field public mRot:F

.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    .line 5
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    .line 6
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    .line 9
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    .line 10
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    .line 11
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/Rotation;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 4
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Rotation: rot("

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
