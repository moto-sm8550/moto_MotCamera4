.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;
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

    invoke-static {}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->values()[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
