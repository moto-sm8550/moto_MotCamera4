.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;
.super Ljava/lang/Object;
.source "SuperSlowMotionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;
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

    invoke-static {}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->values()[Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x7

    const/4 v3, 0x4

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    aput v1, v0, v3

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
