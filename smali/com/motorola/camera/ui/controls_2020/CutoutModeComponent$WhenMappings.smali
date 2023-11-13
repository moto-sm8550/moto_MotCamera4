.class public final synthetic Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;
.super Ljava/lang/Object;
.source "CutoutModeComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 2
    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v2

    aput v0, v1, v3

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
