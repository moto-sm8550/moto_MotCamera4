.class public final Lcom/motorola/camera/mcf/McfCallback$Key;
.super Ljava/lang/Object;
.source "McfCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
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
.field public final mName:Ljava/lang/String;

.field public final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "motorola.camera.mcf.callback.json"

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mType:Ljava/lang/Class;

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

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    instance-of v2, p1, Lcom/motorola/camera/mcf/McfCallback$Key;

    if-eqz v2, :cond_4

    .line 3
    check-cast p1, Lcom/motorola/camera/mcf/McfCallback$Key;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/mcf/McfCallback$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mType:Ljava/lang/Class;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallback$Key;->mType:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback$Key;->mName:Ljava/lang/String;

    return-object p0
.end method
