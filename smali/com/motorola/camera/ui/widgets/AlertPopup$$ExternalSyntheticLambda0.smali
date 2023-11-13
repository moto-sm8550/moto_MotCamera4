.class public final synthetic Lcom/motorola/camera/ui/widgets/AlertPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/settings/SettingsManager$Key;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget p1, Lcom/motorola/camera/ui/widgets/AlertPopup;->$r8$clinit:I

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
