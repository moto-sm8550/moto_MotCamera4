.class public final Lcom/motorola/camera/mcf/McfFaceBeauty;
.super Ljava/lang/Object;
.source "McfFaceBeauty.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfFaceBeauty"


# instance fields
.field private final mAge:I

.field private final mOrientation:I

.field private final mSex:I

.field private final mSmileDegree:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mAge:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSex:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mOrientation:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSmileDegree:I

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mAge:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mOrientation:I

    return p0
.end method

.method public getSex()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSex:I

    return p0
.end method

.method public getSmileDegree()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSmileDegree:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/mcf/McfFaceBeauty;->CNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": [age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",smileDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfFaceBeauty;->mSmileDegree:I

    const-string v1, "]"

    .line 2
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
