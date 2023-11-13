.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/Setting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/settings/Setting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/settings/Setting;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->handleVideoResolution(Lcom/motorola/camera/settings/Setting;Landroid/util/Size;)V

    return-void
.end method
