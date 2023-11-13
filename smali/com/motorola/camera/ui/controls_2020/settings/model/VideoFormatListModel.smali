.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;
.super Ljava/lang/Enum;
.source "VideoFormatListModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;


# instance fields
.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "VIDEO_SIZE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "VIDEO_SLOW_MO_SIZE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    return-object v0
.end method
