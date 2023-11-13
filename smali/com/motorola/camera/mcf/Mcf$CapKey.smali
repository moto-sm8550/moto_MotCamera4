.class public final Lcom/motorola/camera/mcf/Mcf$CapKey;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mTag:I

.field public final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mType:Ljava/lang/Class;

    .line 3
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget v2, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v2, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    if-eqz v2, :cond_3

    .line 4
    check-cast p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 5
    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

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

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return p0
.end method
