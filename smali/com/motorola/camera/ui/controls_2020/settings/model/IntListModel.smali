.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
.super Ljava/lang/Enum;
.source "IntListModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;


# instance fields
.field public final getCameraType:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "EXTERNAL_PREVIEW"

    const/4 v3, 0x0

    const v4, 0x7f1103c1

    .line 3
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "STORAGE"

    const/4 v5, 0x1

    const v6, 0x7f1103da

    .line 6
    invoke-direct {v1, v4, v5, v6, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object v0
.end method
