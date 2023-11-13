.class public final synthetic Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    sget p1, Lcom/motorola/camera/fragments/SettingDialogFragment;->$r8$clinit:I

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
