.class public final Lcom/motorola/camera/reflect/PowerManagerFW;
.super Ljava/lang/Object;
.source "PowerManagerFW.kt"


# static fields
.field public static final ACQUIRE_CAUSES_CLI_WAKEUP:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroid/os/PowerManager;

    const-string v1, "CLI_WAKE_LOCK"

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/utility/ReflectionUtilKt;->getDeclaredInt(Ljava/lang/Class;Ljava/lang/String;I)I

    .line 2
    const-class v0, Landroid/os/PowerManager;

    const-string v1, "ACQUIRE_CAUSES_CLI_WAKEUP"

    const/high16 v2, 0x1000000

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/utility/ReflectionUtilKt;->getDeclaredInt(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/PowerManagerFW;->ACQUIRE_CAUSES_CLI_WAKEUP:I

    return-void
.end method
