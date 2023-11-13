.class public final Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResolutionSelectedListModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/motorola/camera/settings/CameraType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getRearCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method
