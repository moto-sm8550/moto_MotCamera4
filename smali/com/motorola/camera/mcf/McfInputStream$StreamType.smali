.class public final enum Lcom/motorola/camera/mcf/McfInputStream$StreamType;
.super Ljava/lang/Enum;
.source "McfInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/McfInputStream$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamType;

.field public static final enum FULL_AUX:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

.field public static final enum FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v3, "IR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v5, "FULL_PRIMARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    .line 4
    new-instance v5, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v7, "FULL_AUX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_AUX:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    .line 5
    new-instance v7, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v9, "VIDEO_AUX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    const-string v11, "DEPTH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfInputStream$StreamType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfInputStream$StreamType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfInputStream$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfInputStream$StreamType;

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

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StreamType : "

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

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StreamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DEPTH"

    return-object p0

    :cond_1
    const-string p0, "VIDEO_AUX"

    return-object p0

    :cond_2
    const-string p0, "FULL_AUX"

    return-object p0

    :cond_3
    const-string p0, "FULL_PRIMARY"

    return-object p0

    :cond_4
    const-string p0, "IR"

    return-object p0
.end method
