.class public final enum Lcom/motorola/camera/mcf/McfInputStream$StreamMode;
.super Ljava/lang/Enum;
.source "McfInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/McfInputStream$StreamMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field public static final enum DUAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field public static final enum DUAL_DEPTH:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field public static final enum NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field public static final enum UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    .line 3
    new-instance v3, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    const-string v5, "DUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    .line 4
    new-instance v5, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    const-string v7, "DUAL_DEPTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL_DEPTH:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfInputStream$StreamMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfInputStream$StreamMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StreamMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StreamMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DUAL_DEPTH"

    return-object p0

    :cond_1
    const-string p0, "DUAL"

    return-object p0

    :cond_2
    const-string p0, "NORMAL"

    return-object p0
.end method
