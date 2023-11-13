.class public final Lcom/motorola/camera/ui/widgets/gl/Vector3F;
.super Ljava/lang/Object;
.source "Vector3F.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/ui/widgets/gl/Vector3F;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    .line 6
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public final add(FFF)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v2

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v1

    float-to-double p0, p0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final multiply(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final normalize()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    :cond_0
    return v0
.end method

.method public final set(FFF)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 5
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 6
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 2
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 3
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final subtract(FF)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 p2, 0x0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final subtract(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Vector3F( "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
