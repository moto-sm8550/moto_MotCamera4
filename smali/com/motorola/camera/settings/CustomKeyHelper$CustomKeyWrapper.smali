.class public Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;
.super Ljava/lang/Object;
.source "CustomKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/CustomKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomKeyWrapper"
.end annotation


# static fields
.field public static mIdGenerator:I


# instance fields
.field public final mId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mIdGenerator:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mIdGenerator:I

    iput v0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mId:I

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;

    .line 3
    iget p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mId:I

    iget p1, p1, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mId:I

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

    iget p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CustomKeyWrapper;->mId:I

    return p0
.end method
