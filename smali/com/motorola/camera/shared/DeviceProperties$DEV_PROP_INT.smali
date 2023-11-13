.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
.super Ljava/lang/Enum;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/DeviceProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEV_PROP_INT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEVICE_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEV_VENDOR_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v1, "MMC_ENCRYPTION"

    const/4 v2, 0x0

    const-string v3, "persist.sys.mot.encrypt.mmc"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v3, "SOUND_FORCED"

    const/4 v4, 0x1

    const-string v5, "ro.camera.sound.forced"

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 3
    new-instance v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v5, "SECURE_DEVICE"

    const/4 v6, 0x2

    const-string v7, "ro.boot.secure_hardware"

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 4
    new-instance v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v7, "LCD_DENSITY"

    const/4 v8, 0x3

    const-string v9, "ro.sf.lcd_density"

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    new-instance v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v9, "DEVICE_HW_REV"

    const/4 v10, 0x4

    const-string v11, "ro.boot.hwrev"

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->DEVICE_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 6
    new-instance v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v11, "DEV_VENDOR_HW_REV"

    const/4 v12, 0x5

    const-string v13, "ro.vendor.hw.hwrev"

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->DEV_VENDOR_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 7
    new-instance v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v13, "LOW_MEM_KILL_SIZE"

    const/4 v14, 0x6

    const-string v15, "persist.camera.mot.lowmemkillsize"

    invoke-direct {v11, v13, v14, v15}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 8
    new-instance v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v15, "EXTRA_FREE_MEM_SIZE"

    const/4 v14, 0x7

    const-string v12, "persist.camera.mot.extrafreememsize"

    invoke-direct {v13, v15, v14, v12}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 9
    new-instance v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v15, "VM_REQUEST_SWAPPINESS"

    const/16 v14, 0x8

    const-string v10, "persist.camera.mot.vmrequestswappiness"

    invoke-direct {v12, v15, v14, v10}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 10
    new-instance v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v15, "VM_REQUEST_DURATION_MS"

    const/16 v14, 0x9

    const-string v8, "persist.camera.mot.vmrequestdurationms"

    invoke-direct {v10, v15, v14, v8}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 11
    sput-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-object v0
.end method
