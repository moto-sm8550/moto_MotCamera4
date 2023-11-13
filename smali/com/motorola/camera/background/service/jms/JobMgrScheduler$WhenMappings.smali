.class public final synthetic Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;
.super Ljava/lang/Object;
.source "JobMgrScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/background/common/msg/MsgType;->values()[Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v1, 0xa

    aput v2, v0, v1

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
