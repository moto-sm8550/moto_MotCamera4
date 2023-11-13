.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
