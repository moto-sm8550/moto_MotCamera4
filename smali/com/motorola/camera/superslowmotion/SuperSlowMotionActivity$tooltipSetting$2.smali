.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SuperSlowMotionActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/motorola/camera/settings/Setting<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;

    invoke-direct {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;-><init>()V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;->INSTANCE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$tooltipSetting$2;

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

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    return-object p0
.end method
