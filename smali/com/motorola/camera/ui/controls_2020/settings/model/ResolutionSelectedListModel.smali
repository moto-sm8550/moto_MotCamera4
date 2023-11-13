.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
.super Ljava/lang/Enum;
.source "ResolutionSelectedListModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;


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
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    .line 2
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;

    const-string v1, "RESOLUTIONS_REAR"

    const/4 v2, 0x0

    const v3, 0x7f1103ce

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    .line 6
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    sget-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$2;

    const-string v8, "RESOLUTIONS_FRONT"

    const/4 v9, 0x1

    const v10, 0x7f1103cc

    move-object v7, v0

    .line 8
    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Landroid/util/Size;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    return-object v0
.end method
