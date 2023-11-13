.class public final Lcom/motorola/camera/mcf/McfInstanceIdentifier;
.super Ljava/lang/Object;
.source "McfInstanceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/mcf/McfInstanceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mInstanceId:I

.field public final mInstanceTag:I

.field public final mInstanceType:I

.field public final mJobId:I

.field public final mName:Ljava/lang/String;

.field public final mRequestId:I

.field public final mTimeStamp:J

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier$1;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    const-class v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const-string v0, "McfInstanceIdentifier"

    sput-object v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->CNAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    .line 6
    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    .line 8
    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    .line 10
    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mVersion:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/camera/mcf/McfInstanceIdentifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 3
    iget v2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget v3, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    iget v3, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->CNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instanceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instanceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    const-string/jumbo v1, "}"

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
