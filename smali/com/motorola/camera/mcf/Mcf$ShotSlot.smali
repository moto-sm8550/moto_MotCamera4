.class public final enum Lcom/motorola/camera/mcf/Mcf$ShotSlot;
.super Ljava/lang/Enum;
.source "Mcf.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShotSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$ShotSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;


# instance fields
.field private final mIntValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 3
    new-instance v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v5, "BESTSHOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 4
    new-instance v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v7, "COMPOSITION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 5
    new-instance v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v9, "BG_SERVICE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 6
    new-instance v9, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v11, "AI_LLS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 7
    new-instance v11, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v13, "AI_IST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 8
    new-instance v13, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v15, "AI_CUD"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    const/4 v0, 0x5

    aput-object v9, v15, v0

    aput-object v11, v15, v14

    aput-object v13, v15, v12

    .line 9
    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->mIntValue:I

    return-void
.end method

.method public static toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->mIntValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid ShotSlot int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object v0
.end method


# virtual methods
.method public isAiCUD()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAiIST()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAiLLS()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBestShot()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComposition()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
