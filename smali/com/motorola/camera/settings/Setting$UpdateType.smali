.class public final enum Lcom/motorola/camera/settings/Setting$UpdateType;
.super Ljava/lang/Enum;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/settings/Setting$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v1, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v3, "PARAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v3, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v5, "PARAM_AND_RESTART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v5, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v7, "PARAM_AND_ROI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 2
    new-instance v7, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v9, "PARAM_ROI_AND_CLOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v11, "PERMISSION_CHECK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v11, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v13, "PARAM_AND_REOPEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/motorola/camera/settings/Setting$UpdateType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 3
    sput-object v13, Lcom/motorola/camera/settings/Setting$UpdateType;->$VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/Setting$UpdateType;
    .locals 1

    const-class v0, Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/settings/Setting$UpdateType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->$VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v0}, [Lcom/motorola/camera/settings/Setting$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object v0
.end method
