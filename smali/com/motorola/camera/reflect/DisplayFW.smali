.class public final Lcom/motorola/camera/reflect/DisplayFW;
.super Ljava/lang/Object;
.source "DisplayFW.kt"


# static fields
.field public static final CLI_DISPLAY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/Display;

    const-string v1, "CLI_DISPLAY"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/utility/ReflectionUtilKt;->getDeclaredInt(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    return-void
.end method
