.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;
.super Ljava/lang/Object;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/Notifier$TYPE;->values()[Lcom/motorola/camera/Notifier$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_FIRST_TIME_USE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->values()[Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v1, v0, v2

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->values()[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const/4 v3, 0x0

    aput v2, v0, v3

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    aput v1, v0, v2

    return-void
.end method
