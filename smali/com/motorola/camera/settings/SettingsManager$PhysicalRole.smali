.class public final enum Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhysicalRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

.field public static final enum AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

.field public static final enum MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;


# instance fields
.field private final mPhysicalRoleString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    const-string v3, "main"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    .line 2
    new-instance v1, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    const-string v3, "AUX"

    const/4 v4, 0x1

    const-string v5, "aux"

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->$VALUES:[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->mPhysicalRoleString:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->values()[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->mPhysicalRoleString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;
    .locals 1

    const-class v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->$VALUES:[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-virtual {v0}, [Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    return-object v0
.end method
